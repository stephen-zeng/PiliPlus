import 'dart:io' show Platform;

import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/pip/pili_ios_pip.dart';
import 'package:PiliPlus/utils/platform_utils.dart';

abstract final class PiliPip {
  static bool get isActive {
    if (Platform.isIOS) {
      return PiliIosPip.isActive;
    }
    return false;
  }

  static Future<bool> isSupported() async {
    if (Platform.isAndroid || PlatformUtils.isDesktop) {
      return true;
    }
    if (Platform.isIOS) {
      return PiliIosPip.isSupported();
    }
    return false;
  }

  static Future<bool> enter({
    required bool autoEnter,
    required int? width,
    required int? height,
    required bool isLive,
    required bool isPlaying,
    required Duration position,
    required Duration duration,
    int? mpvHandle,
    String? videoUrl,
    String? audioUrl,
  }) async {
    if (Platform.isAndroid) {
      PageUtils.enterPip(
        autoEnter: autoEnter,
        width: width,
        height: height,
        isLive: isLive,
        isPlaying: isPlaying,
      );
      return true;
    }

    if (!Platform.isIOS) {
      return false;
    }

    final setupResult = await PiliIosPip.setup(
      width: width ?? 16,
      height: height ?? 9,
      autoEnter: autoEnter,
      isLive: isLive,
      isPlaying: isPlaying,
      position: position,
      duration: duration,
      mpvHandle: mpvHandle,
      videoUrl: videoUrl,
      audioUrl: audioUrl,
    );
    if (!autoEnter && setupResult) {
      return PiliIosPip.start();
    }
    return setupResult;
  }

  static Future<void> disableAutoEnter() async {
    if (Platform.isIOS) {
      await PiliIosPip.setAutoEnterEnabled(false);
    }
  }

  static Future<void> dispose() => PiliIosPip.dispose();
}
