import 'dart:async';
import 'dart:io' show Platform;

import 'package:get/get.dart';

import 'package:flutter/foundation.dart' show debugPrint, kDebugMode;
import 'package:flutter/services.dart';

enum PiliIosPipState {
  started,
  stopped,
  failed,
}

typedef PiliIosPipCommandHandler = Future<void> Function();
typedef PiliIosPipSeekHandler = Future<void> Function(Duration position);
typedef PiliIosPipFailedHandler = void Function(String? error);
typedef PiliIosPipStateHandler =
    Future<void> Function(
      Duration position,
      bool isPlaying,
    );

abstract final class PiliIosPip {
  static const MethodChannel _channel = MethodChannel('piliplus/pip');

  static bool _initialized = false;
  static bool _isActive = false;
  static String? _lastError;
  static bool _manualStartPending = false;

  static PiliIosPipCommandHandler? onPlay;
  static PiliIosPipCommandHandler? onPause;
  static PiliIosPipCommandHandler? onNext;
  static PiliIosPipCommandHandler? onPrevious;
  static PiliIosPipSeekHandler? onSeek;
  static PiliIosPipFailedHandler? onFailed;
  static PiliIosPipStateHandler? onStarted;
  static PiliIosPipStateHandler? onStopped;

  static bool get isActive => _isActive;
  static String? get lastError => _lastError;

  static void ensureInitialized() {
    if (_initialized || !Platform.isIOS) {
      return;
    }
    _initialized = true;
    _channel.setMethodCallHandler(_handleMethodCall);
  }

  static Future<bool> isSupported() async {
    if (!Platform.isIOS) {
      return false;
    }
    ensureInitialized();
    return _invokeBool('isSupported');
  }

  static Future<bool> isAutoEnterSupported() async {
    if (!Platform.isIOS) {
      return false;
    }
    ensureInitialized();
    return _invokeBool('isAutoEnterSupported');
  }

  static Future<bool> setup({
    required int width,
    required int height,
    required bool autoEnter,
    required bool isLive,
    required bool isPlaying,
    required Duration position,
    required Duration duration,
    int? mpvHandle,
    String? videoUrl,
    String? audioUrl,
  }) async {
    if (!Platform.isIOS) {
      return false;
    }
    ensureInitialized();
    _lastError = null;
    final result = await _invokeBool('setup', <String, Object?>{
      'width': width,
      'height': height,
      'autoEnter': autoEnter,
      'isLive': isLive,
      'isPlaying': isPlaying,
      'position': position.inMilliseconds,
      'duration': duration.inMilliseconds,
      'mpvHandle': mpvHandle,
      'videoUrl': videoUrl,
      'audioUrl': audioUrl,
    });
    if (!result) {
      _lastError ??= 'player.pip_init_failed'.tr;
    }
    return result;
  }

  static Future<bool> start() async {
    if (!Platform.isIOS) {
      return false;
    }
    ensureInitialized();
    _lastError = null;
    final result = await _invokeBool('start');
    _manualStartPending = result && !_isActive;
    if (!result) {
      _lastError ??= 'player.pip_failed'.tr;
    }
    return result;
  }

  static Future<void> stop() async {
    if (!Platform.isIOS) {
      return;
    }
    ensureInitialized();
    await _invokeVoid('stop');
  }

  static Future<void> setAutoEnterEnabled(bool enabled) async {
    if (!Platform.isIOS) {
      return;
    }
    ensureInitialized();
    await _invokeVoid('setAutoEnterEnabled', enabled);
  }

  static Future<void> dispose() async {
    if (!Platform.isIOS) {
      return;
    }
    _isActive = false;
    await _invokeVoid('dispose');
  }

  static Future<void> updatePlaybackState({
    required bool isLive,
    required bool isPlaying,
    required Duration position,
    required Duration duration,
    bool canSkipPrevious = false,
    bool canSkipNext = false,
  }) async {
    if (!Platform.isIOS) {
      return;
    }
    ensureInitialized();
    await _invokeVoid('updatePlaybackState', <String, Object?>{
      'isLive': isLive,
      'isPlaying': isPlaying,
      'position': position.inMilliseconds,
      'duration': duration.inMilliseconds,
      'canSkipPrevious': canSkipPrevious,
      'canSkipNext': canSkipNext,
    });
  }

  static Future<dynamic> _handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'stateChanged':
        final arguments = call.arguments;
        if (arguments is Map) {
          final state = arguments['state'];
          final position = Duration(
            milliseconds: _intArgument(arguments, 'position') ?? 0,
          );
          final isPlaying = _boolArgument(arguments, 'isPlaying') ?? false;
          _isActive = state == 'started';
          if (state == 'failed') {
            _lastError = arguments['error']?.toString();
            if (_manualStartPending) {
              onFailed?.call(_lastError);
            }
            _manualStartPending = false;
          } else if (state == 'started') {
            _lastError = null;
            _manualStartPending = false;
            await onStarted?.call(position, isPlaying);
          } else if (state == 'stopped') {
            _manualStartPending = false;
            await onStopped?.call(position, isPlaying);
          }
        }
        return null;
      case 'play':
        return onPlay?.call();
      case 'pause':
        return onPause?.call();
      case 'next':
        return onNext?.call();
      case 'previous':
        return onPrevious?.call();
      case 'seek':
        final position = _intArgument(call.arguments, 'position');
        if (position != null) {
          return onSeek?.call(Duration(milliseconds: position));
        }
        return null;
      case 'log':
        if (kDebugMode) {
          debugPrint('[PiliPip] ${call.arguments}');
        }
        return null;
      default:
        throw MissingPluginException('No handler for ${call.method}');
    }
  }

  static int? _intArgument(Object? arguments, String key) {
    if (arguments is! Map) {
      return null;
    }
    final value = arguments[key];
    if (value is int) {
      return value;
    }
    if (value is num) {
      return value.toInt();
    }
    return null;
  }

  static bool? _boolArgument(Object? arguments, String key) {
    if (arguments is! Map) {
      return null;
    }
    final value = arguments[key];
    if (value is bool) {
      return value;
    }
    return null;
  }

  static Future<bool> _invokeBool(String method, [Object? arguments]) async {
    try {
      return await _channel.invokeMethod<bool>(method, arguments) ?? false;
    } on PlatformException catch (e) {
      _lastError = e.message ?? e.code;
      return false;
    } on MissingPluginException catch (e) {
      _lastError = e.message ?? e.toString();
      return false;
    }
  }

  static Future<void> _invokeVoid(String method, [Object? arguments]) async {
    try {
      await _channel.invokeMethod<void>(method, arguments);
    } on PlatformException catch (e) {
      _lastError = e.message ?? e.code;
    } on MissingPluginException catch (e) {
      _lastError = e.message ?? e.toString();
    }
  }
}
