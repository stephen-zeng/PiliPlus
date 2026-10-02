import 'dart:io';

import 'package:PiliPlus/models_new/video/video_detail/page.dart';
import 'package:PiliPlus/plugin/pl_player/models/play_status.dart';
import 'package:PiliPlus/services/audio_handler.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:audio_service/audio_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_ce/hive.dart';

Set<MediaAction> _enabledActions(PlaybackState state) => {
  ...state.systemActions,
  ...state.controls.map((control) => control.action),
};

void main() {
  late Directory tempDir;
  late VideoPlayerServiceHandler handler;

  setUpAll(() async {
    tempDir = await Directory.systemTemp.createTemp('piliplus-media-test-');
    Hive.init(tempDir.path);
    GStorage.setting = await Hive.openBox('setting');
  });

  setUp(() {
    handler = VideoPlayerServiceHandler()
      ..onVideoDetailChange(
        Part(part: 'Test video', duration: 120),
        1,
        'test-player',
      );
  });

  tearDown(() => handler.clear());

  tearDownAll(() async {
    await Hive.close();
    await tempDir.delete(recursive: true);
  });

  void update(
    PlayerStatus status, {
    bool buffering = false,
    bool live = false,
  }) {
    handler.onUpdateState(
      status,
      buffering,
      live,
      position: const Duration(seconds: 30),
      speed: 1.5,
    );
  }

  test(
    'Apple remote commands remain available through repeated pause/resume',
    () async {
      var plays = 0;
      var pauses = 0;
      handler
        ..onPlay = () async {
          plays++;
          update(.playing);
        }
        ..onPause = () async {
          pauses++;
          update(.paused);
        };

      update(.playing);
      for (var i = 0; i < 3; i++) {
        expect(
          _enabledActions(handler.playbackState.value),
          containsAll([
            MediaAction.play,
            MediaAction.pause,
            MediaAction.playPause,
          ]),
        );
        await handler.click();
        final paused = handler.playbackState.value;
        expect(paused.playing, isFalse);
        expect(paused.processingState, AudioProcessingState.ready);
        expect(paused.updatePosition, const Duration(seconds: 30));
        expect(paused.speed, 1.5);
        expect(
          _enabledActions(paused),
          containsAll([
            MediaAction.play,
            MediaAction.pause,
            MediaAction.playPause,
            MediaAction.rewind,
            MediaAction.fastForward,
            MediaAction.seek,
          ]),
        );

        await handler.click();
        expect(handler.playbackState.value.playing, isTrue);
      }
      expect(plays, 3);
      expect(pauses, 3);
    },
    skip: !Platform.isIOS && !Platform.isMacOS,
  );

  test(
    'pausing while buffering makes the media button resume playback',
    () async {
      var plays = 0;
      var pauses = 0;
      handler
        ..onPlay = () async {
          plays++;
          update(.playing);
        }
        ..onPause = () async {
          pauses++;
        };

      update(.playing, buffering: true);
      update(.paused, buffering: true);
      expect(handler.playbackState.value.playing, isFalse);
      expect(
        handler.playbackState.value.processingState,
        AudioProcessingState.buffering,
      );

      await handler.click();
      expect(plays, 1);
      expect(pauses, 0);
      expect(handler.playbackState.value.playing, isTrue);
    },
  );

  test('live pause retains resume controls without skip buttons', () {
    update(.paused, live: true);
    final state = handler.playbackState.value;
    expect(state.playing, isFalse);
    expect(state.controls.map((control) => control.action), [MediaAction.play]);
    if (Platform.isIOS || Platform.isMacOS) {
      expect(
        _enabledActions(state),
        containsAll([
          MediaAction.play,
          MediaAction.pause,
          MediaAction.playPause,
        ]),
      );
    }
  });

  test('closing the player clears remote capabilities', () {
    update(.playing);
    handler.clear();
    expect(handler.mediaItem.value, isNull);
    expect(
      handler.playbackState.value.processingState,
      AudioProcessingState.idle,
    );
    expect(_enabledActions(handler.playbackState.value), isEmpty);
  });
}
