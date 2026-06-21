import 'dart:io' show Platform;

import 'package:PiliPlus/common/widgets/custom_icon.dart';
import 'package:PiliPlus/common/widgets/video_card/video_cover_preview_controller.dart';
import 'package:PiliPlus/models/common/super_chat_type.dart';
import 'package:PiliPlus/models/common/video/subtitle_pref_type.dart';
import 'package:PiliPlus/pages/main/controller.dart';
import 'package:PiliPlus/pages/setting/models/model.dart';
import 'package:PiliPlus/pages/setting/pages/fullscreen_sc_size.dart';
import 'package:PiliPlus/pages/setting/widgets/select_dialog.dart';
import 'package:PiliPlus/pages/setting/widgets/slider_dialog.dart';
import 'package:PiliPlus/plugin/pl_player/models/bottom_progress_behavior.dart';
import 'package:PiliPlus/plugin/pl_player/models/fullscreen_mode.dart';
import 'package:PiliPlus/plugin/pl_player/models/play_repeat.dart';
import 'package:PiliPlus/services/service_locator.dart';
import 'package:PiliPlus/utils/extension/num_ext.dart';
import 'package:PiliPlus/utils/platform_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

List<SettingsModel> get playSettings => [
  SwitchModel(
    title: 'setting.play.dm_switch'.tr,
    subtitle: 'setting.play.dm_switch_desc'.tr,
    leading: const Icon(CustomIcons.dm_settings),
    setKey: SettingBoxKey.enableShowDanmaku,
    defaultVal: true,
  ),
  if (PlatformUtils.isMobile)
    SwitchModel(
      title: 'setting.play.tap_dm'.tr,
      subtitle: 'setting.play.tap_dm_desc'.tr,
      leading: const Icon(Icons.touch_app_outlined),
      setKey: SettingBoxKey.enableTapDm,
      defaultVal: true,
    ),
  NormalModel(
    onTap: (context, setState) => Get.toNamed('/playSpeedSet'),
    leading: const Icon(Icons.speed_outlined),
    title: 'setting.play.speed'.tr,
    subtitle: 'setting.play.speed_desc'.tr,
  ),
  if (PlatformUtils.isDesktop)
    SplitModel(
      normalModel: NormalModel.split(
        title: 'setting.play.cover_preview'.tr,
        subtitle: 'setting.play.cover_preview_desc'.tr,
        leading: const Icon(Icons.play_circle_outline),
      ),
      switchModel: SwitchModel.split(
        defaultVal: true,
        setKey: SettingBoxKey.enableVideoCoverPreview,
        onChanged: (value) {
          if (!value) {
            VideoCoverPreviewController.instance.disposeGlobal();
          }
        },
        onTap: _showVideoCoverPreviewDelayDialog,
      ),
    ),
  if (Platform.isAndroid)
    NormalModel(
      onTap: _showAngleDegreesDialog,
      leading: const Icon(MdiIcons.angleAcute),
      title: 'setting.play.angle'.tr,
      getSubtitle: () =>
          'setting.play.angle_cur'.trParams({'deg': '${Pref.angleDegrees}'}),
    ),
  SwitchModel(
    title: 'setting.play.autoplay'.tr,
    subtitle: 'setting.play.autoplay_desc'.tr,
    leading: const Icon(Icons.motion_photos_auto_outlined),
    setKey: SettingBoxKey.autoPlayEnable,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.play.fs_lock_btn'.tr,
    leading: const Icon(Icons.lock_outline),
    setKey: SettingBoxKey.showFsLockBtn,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.play.fs_screenshot_btn'.tr,
    leading: const Icon(Icons.photo_camera_outlined),
    setKey: SettingBoxKey.showFsScreenshotBtn,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.play.fs_battery'.tr,
    leading: const Icon(Icons.battery_3_bar),
    setKey: SettingBoxKey.showBatteryLevel,
    defaultVal: PlatformUtils.isMobile,
  ),
  SwitchModel(
    title: 'setting.play.double_tap_seek'.tr,
    subtitle: 'setting.play.double_tap_seek_desc'.tr,
    leading: const Icon(Icons.touch_app_outlined),
    setKey: SettingBoxKey.enableQuickDouble,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.play.slide_brightness_volume'.tr,
    leading: const Icon(MdiIcons.tuneVerticalVariant),
    setKey: SettingBoxKey.enableSlideVolumeBrightness,
    defaultVal: true,
  ),
  if (Platform.isAndroid)
    SwitchModel(
      title: 'setting.play.system_brightness'.tr,
      leading: const Icon(Icons.brightness_6_outlined),
      setKey: SettingBoxKey.setSystemBrightness,
      defaultVal: false,
    ),
  SwitchModel(
    title: 'setting.play.slide_fs'.tr,
    leading: const Icon(MdiIcons.panVertical),
    setKey: SettingBoxKey.enableSlideFS,
    defaultVal: true,
  ),
  if (PlatformUtils.isMobile)
    NormalModel(
      title: 'setting.play.player_volume'.tr,
      leading: const Icon(Icons.volume_up),
      getSubtitle: () => 'setting.play.volume_cur'.trParams({
        'val': Pref.playerVolume.toStringAsFixed(0),
      }),
      onTap: showPlayerVolumeDialog,
    )
  else
    NormalModel(
      title: 'setting.play.max_volume'.tr,
      leading: const Icon(Icons.volume_up),
      getSubtitle: () => 'setting.play.volume_cur'.trParams({
        'val': (Pref.maxVolume * 100).toStringAsFixed(0),
      }),
      onTap: _showMaxVolumeDialog,
    ),
  getVideoFilterSelectModel(
    title: 'setting.play.double_tap_dur'.tr,
    suffix: 's',
    key: SettingBoxKey.fastForBackwardDuration,
    values: [5, 10, 15],
    defaultValue: 10,
    isFilter: false,
  ),
  SwitchModel(
    title: 'setting.play.slide_relative'.tr,
    leading: const Icon(Icons.swap_horiz_outlined),
    setKey: SettingBoxKey.useRelativeSlide,
    defaultVal: false,
  ),
  getVideoFilterSelectModel(
    title: 'setting.play.slide_dur'.tr,
    subtitle: 'setting.play.slide_dur_desc'.tr,
    suffix: Pref.useRelativeSlide ? '%' : 's',
    key: SettingBoxKey.sliderDuration,
    values: [25, 50, 90, 100],
    defaultValue: 90,
    isFilter: false,
  ),
  NormalModel(
    title: 'setting.play.auto_subtitle'.tr,
    leading: const Icon(Icons.closed_caption_outlined),
    getSubtitle: () => 'setting.play.subtitle_cur'.trParams({
      'desc': Pref.subtitlePreferenceV2.desc,
    }),
    onTap: _showSubtitleDialog,
  ),
  if (PlatformUtils.isDesktop)
    SwitchModel(
      title: 'setting.play.pause_on_min'.tr,
      leading: const Icon(Icons.pause_circle_outline),
      setKey: SettingBoxKey.pauseOnMinimize,
      defaultVal: false,
      onChanged: (value) {
        try {
          Get.find<MainController>().pauseOnMinimize = value;
        } catch (_) {}
      },
    ),
  SwitchModel(
    title: 'setting.play.keyboard'.tr,
    leading: const Icon(Icons.keyboard_alt_outlined),
    setKey: SettingBoxKey.keyboardControl,
    defaultVal: true,
  ),
  NormalModel(
    title: 'setting.play.superchat_type'.tr,
    leading: const Icon(Icons.live_tv),
    getSubtitle: () => 'setting.play.superchat_cur'.trParams({
      'val': Pref.superChatType.title,
    }),
    onTap: _showSuperChatDialog,
  ),
  NormalModel(
    title: 'setting.play.fs_sc_size'.tr,
    subtitle: 'setting.play.fs_sc_size_desc'.tr,
    leading: const Icon(Icons.open_in_full),
    onTap: (_, _) => Get.to(const FullScreenScSize()),
  ),
  SwitchModel(
    title: 'setting.play.vertical_expand'.tr,
    subtitle: 'setting.play.vertical_expand_desc'.tr,
    leading: const Icon(Icons.expand_outlined),
    setKey: SettingBoxKey.enableVerticalExpand,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.play.auto_fs'.tr,
    subtitle: 'setting.play.auto_fs_desc'.tr,
    leading: const Icon(Icons.fullscreen_outlined),
    setKey: SettingBoxKey.enableAutoEnter,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.play.auto_exit_fs'.tr,
    subtitle: 'setting.play.auto_exit_fs_desc'.tr,
    leading: const Icon(Icons.fullscreen_exit_outlined),
    setKey: SettingBoxKey.enableAutoExit,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.play.long_show_control'.tr,
    subtitle: 'setting.play.long_show_control_desc'.tr,
    leading: const Icon(Icons.timer_outlined),
    setKey: SettingBoxKey.enableLongShowControl,
    defaultVal: false,
  ),
  if (PlatformUtils.isMobile)
    SwitchModel(
      title: 'setting.play.bg_play'.tr,
      subtitle: 'setting.play.bg_play_desc'.tr,
      leading: const Icon(Icons.motion_photos_pause_outlined),
      setKey: SettingBoxKey.continuePlayInBackground,
      defaultVal: false,
    ),
  if (Platform.isAndroid) ...[
    SwitchModel(
      title: 'setting.play.bg_pip'.tr,
      subtitle: 'setting.play.bg_pip_desc'.tr,
      leading: const Icon(Icons.picture_in_picture_outlined),
      setKey: SettingBoxKey.autoPiP,
      defaultVal: false,
      onChanged: (val) {
        if (val && !videoPlayerServiceHandler!.enableBackgroundPlay) {
          SmartDialog.showToast('setting.play.suggest_bg_audio'.tr);
        }
      },
    ),
    SwitchModel(
      title: 'setting.play.pip_no_dm'.tr,
      subtitle: 'setting.play.pip_no_dm_desc'.tr,
      leading: const Icon(CustomIcons.dm_off),
      setKey: SettingBoxKey.pipNoDanmaku,
      defaultVal: false,
    ),
  ],
  SwitchModel(
    title: 'setting.play.fs_gesture_reverse'.tr,
    subtitle: 'setting.play.fs_gesture_reverse_desc'.tr,
    leading: const Icon(Icons.swap_vert),
    setKey: SettingBoxKey.fullScreenGestureReverse,
    defaultVal: false,
  ),
  SwitchModel(
    title: 'setting.play.fs_action_items'.tr,
    leading: const Icon(MdiIcons.dotsHorizontalCircleOutline),
    setKey: SettingBoxKey.showFSActionItem,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.play.online_total'.tr,
    subtitle: 'setting.play.online_total_desc'.tr,
    leading: const Icon(Icons.people_outlined),
    setKey: SettingBoxKey.enableOnlineTotal,
    defaultVal: false,
  ),
  NormalModel(
    title: 'setting.play.fs_orientation'.tr,
    leading: const Icon(Icons.open_with_outlined),
    getSubtitle: () => 'setting.play.fs_orientation_cur'.trParams({
      'desc': Pref.fullScreenMode.desc,
    }),
    onTap: _showFullScreenModeDialog,
  ),
  NormalModel(
    title: 'setting.play.btm_progress'.tr,
    leading: const Icon(Icons.border_bottom_outlined),
    getSubtitle: () => 'setting.play.btm_progress_cur'.trParams({
      'desc': Pref.btmProgressBehavior.desc,
    }),
    onTap: _showProgressBehaviorDialog,
  ),
  if (PlatformUtils.isMobile)
    SwitchModel(
      title: 'setting.play.bg_audio_service'.tr,
      subtitle: 'setting.play.bg_audio_service_desc'.tr,
      leading: const Icon(Icons.volume_up_outlined),
      setKey: SettingBoxKey.enableBackgroundPlay,
      defaultVal: true,
      onChanged: (value) =>
          videoPlayerServiceHandler!.enableBackgroundPlay = value,
    ),
  PopupModel(
    title: 'setting.play.play_order'.tr,
    leading: const Icon(Icons.repeat),
    value: () => Pref.playRepeat,
    items: PlayRepeat.values,
    onSelected: (value, setState) => GStorage.video
        .put(VideoBoxKey.playRepeat, value.index)
        .whenComplete(setState),
  ),
  SwitchModel(
    title: 'setting.play.temp_player_conf'.tr,
    subtitle: 'setting.play.temp_player_conf_desc'.tr,
    leading: const Icon(Icons.video_settings_outlined),
    setKey: SettingBoxKey.tempPlayerConf,
    defaultVal: false,
  ),
];

Future<void> _showSubtitleDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<SubtitlePrefType>(
    context: context,
    builder: (context) => SelectDialog<SubtitlePrefType>(
      title: 'setting.play.subtitle_pref'.tr,
      value: Pref.subtitlePreferenceV2,
      values: SubtitlePrefType.values.map((e) => (e, e.desc)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(
      SettingBoxKey.subtitlePreferenceV2,
      res.index,
    );
    setState();
  }
}

Future<void> _showVideoCoverPreviewDelayDialog(BuildContext context) async {
  const minDelay = 0.1;
  const maxDelay = 3.0;
  double delay = Pref.videoCoverPreviewDelay.clamp(minDelay, maxDelay);
  final textController = TextEditingController(text: delay.toStringAsFixed(1));

  await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('setting.play.cover_preview_trigger'.tr),
      contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 12),
      content: StatefulBuilder(
        builder: (context, setDialogState) => Column(
          spacing: 20,
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              padding: .zero,
              value: delay,
              min: minDelay,
              max: maxDelay,
              secondaryTrackValue: maxDelay,
              divisions: 29,
              label: '${delay.toStringAsFixed(1)}s',
              onChanged: (value) => setDialogState(() {
                delay = value.toPrecision(1);
                textController.text = delay.toStringAsFixed(1);
              }),
            ),
            TextFormField(
              controller: textController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.allow(RegExp(r'[\d.]+')),
              ],
              decoration: InputDecoration(
                labelText: 'setting.play.trigger_dur'.tr,
                hintText: '0.1 - 3.0',
                suffixText: 's',
                border: const OutlineInputBorder(),
              ),
              onChanged: (value) {
                final parsed = double.tryParse(value);
                if (parsed != null &&
                    parsed >= minDelay &&
                    parsed <= maxDelay) {
                  setDialogState(() {
                    delay = parsed.toPrecision(1);
                  });
                }
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            GStorage.setting.delete(SettingBoxKey.videoCoverPreviewDelay);
          },
          child: Text('common.reset'.tr),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'common.cancel'.tr,
            style: TextStyle(color: ColorScheme.of(context).outline),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            GStorage.setting.put(SettingBoxKey.videoCoverPreviewDelay, delay);
          },
          child: Text('common.confirm'.tr),
        ),
      ],
    ),
  );
  textController.dispose();
}

Future<void> _showSuperChatDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<SuperChatType>(
    context: context,
    builder: (context) => SelectDialog<SuperChatType>(
      title: 'setting.play.superchat_type'.tr,
      value: Pref.superChatType,
      values: SuperChatType.values.map((e) => (e, e.title)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.superChatType, res.index);
    setState();
  }
}

Future<void> _showFullScreenModeDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<FullScreenMode>(
    context: context,
    builder: (context) => SelectDialog<FullScreenMode>(
      title: 'setting.play.fs_orientation'.tr,
      value: Pref.fullScreenMode,
      values: FullScreenMode.values.map((e) => (e, e.desc)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.fullScreenMode, res.index);
    setState();
  }
}

Future<void> _showProgressBehaviorDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<BtmProgressBehavior>(
    context: context,
    builder: (context) => SelectDialog<BtmProgressBehavior>(
      title: 'setting.play.btm_progress'.tr,
      value: Pref.btmProgressBehavior,
      values: BtmProgressBehavior.values.map((e) => (e, e.desc)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(
      SettingBoxKey.btmProgressBehavior,
      res.index,
    );
    setState();
  }
}

Future<void> _showAngleDegreesDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<double>(
    context: context,
    builder: (context) => SliderDialog(
      title: Text('setting.play.angle'.tr),
      min: 10.0,
      max: 90.0,
      divisions: 90,
      precise: 0,
      value: Pref.angleDegrees.toDouble(),
      suffix: '°',
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.angleDegrees, res.toInt());
    setState();
  }
}

Future<void> showPlayerVolumeDialog(
  BuildContext context,
  VoidCallback setState, {
  ValueChanged<double>? onChanged,
}) {
  return showVolumeDialog(
    context,
    title: Text('setting.play.player_volume'.tr),
    value: Pref.playerVolume,
    onChanged: (value) => GStorage.setting
        .put(SettingBoxKey.playerVolume, value)
        .whenComplete(() {
          setState();
          onChanged?.call(value);
        }),
  );
}

Future<void> _showMaxVolumeDialog(
  BuildContext context,
  VoidCallback setState,
) {
  return showVolumeDialog(
    context,
    title: Text('setting.play.max_volume'.tr),
    value: Pref.maxVolume * 100,
    onChanged: (rawValue) {
      final maxVolume = (rawValue / 100).toPrecision(2);
      if (Pref.desktopVolume > maxVolume) {
        GStorage.setting.put(SettingBoxKey.desktopVolume, maxVolume);
      }
      GStorage.setting
          .put(SettingBoxKey.maxVolume, maxVolume)
          .whenComplete(setState);
    },
  );
}

const kMinVolume = 100.0;
const kMaxVolume = 300.0;

Future<void> showVolumeDialog(
  BuildContext context, {
  required Widget title,
  required double value,
  required ValueChanged<double> onChanged,
}) async {
  final res = await showDialog<double>(
    context: context,
    builder: (context) => SliderDialog(
      title: title,
      min: kMinVolume,
      max: kMaxVolume,
      divisions: 40,
      precise: 0,
      value: value,
      suffix: '%',
    ),
  );
  if (res != null) {
    onChanged(res);
  }
}
