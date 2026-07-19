import 'dart:io';

import 'package:PiliPlus/models/common/video/audio_quality.dart';
import 'package:PiliPlus/models/common/video/cdn_type.dart';
import 'package:PiliPlus/models/common/video/live_quality.dart';
import 'package:PiliPlus/models/common/video/video_decode_type.dart';
import 'package:PiliPlus/models/common/video/video_quality.dart';
import 'package:PiliPlus/pages/setting/models/model.dart';
import 'package:PiliPlus/pages/setting/widgets/ordered_multi_select_dialog.dart';
import 'package:PiliPlus/pages/setting/widgets/select_dialog.dart';
import 'package:PiliPlus/plugin/pl_player/models/audio_output_type.dart';
import 'package:PiliPlus/plugin/pl_player/models/hwdec_type.dart';
import 'package:PiliPlus/utils/filtering_text.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:PiliPlus/utils/video_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show FilteringTextInputFormatter;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

List<SettingsModel> get videoSettings => [
  SwitchModel(
    title: 'setting.video.enable_ha'.tr,
    subtitle: 'setting.video.enable_ha_desc'.tr,
    leading: const Icon(Icons.flash_on_outlined),
    setKey: SettingBoxKey.enableHA,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.video.p1080'.tr,
    subtitle: 'setting.video.p1080_desc'.tr,
    leading: const Icon(Icons.hd_outlined),
    setKey: SettingBoxKey.p1080,
    defaultVal: true,
  ),
  NormalModel(
    title: 'setting.video.bili_data'.tr,
    subtitle: 'setting.video.bili_data_desc'.tr,
    leading: const Icon(Icons.perm_data_setting_outlined),
    getTrailing: (theme) => IgnorePointer(
      child: Transform.scale(
        scale: 0.8,
        alignment: Alignment.centerRight,
        child: Switch(
          value: true,
          onChanged: (_) {},
          thumbIcon: WidgetStateProperty.all(
            const Icon(Icons.lock_outline_rounded),
          ),
        ),
      ),
    ),
  ),
  NormalModel(
    title: 'setting.video.cdn'.tr,
    leading: const Icon(MdiIcons.cloudPlusOutline),
    getSubtitle: () => 'setting.video.cdn_cur'.trParams({
      'desc': VideoUtils.cdnService.desc.tr,
    }),
    onTap: _showCDNDialog,
  ),
  NormalModel(
    title: 'setting.video.live_cdn'.tr,
    leading: const Icon(MdiIcons.cloudPlusOutline),
    getSubtitle: () => 'setting.video.live_cdn_cur'.trParams({
      'url': Pref.liveCdnUrl ?? 'setting.video.cdn_default'.tr,
    }),
    onTap: _showLiveCDNDialog,
  ),
  SwitchModel(
    title: 'setting.video.cdn_speed_test'.tr,
    leading: const Icon(Icons.speed),
    subtitle: 'setting.video.cdn_speed_test_desc'.tr,
    setKey: SettingBoxKey.cdnSpeedTest,
    defaultVal: true,
  ),
  SwitchModel(
    title: 'setting.video.audio_no_cdn'.tr,
    subtitle: 'setting.video.audio_no_cdn_desc'.tr,
    leading: const Icon(MdiIcons.musicNotePlus),
    setKey: SettingBoxKey.disableAudioCDN,
    defaultVal: false,
    onChanged: (value) => VideoUtils.disableAudioCDN = value,
  ),
  NormalModel(
    title: 'setting.video.default_qa'.tr,
    leading: const Icon(Icons.video_settings_outlined),
    getSubtitle: () => 'setting.video.cur_qa'.trParams({
      'desc': VideoQuality.fromCode(Pref.defaultVideoQa).desc,
    }),
    onTap: _showVideoQaDialog,
  ),
  NormalModel(
    title: 'setting.video.cellular_qa'.tr,
    leading: const Icon(Icons.video_settings_outlined),
    getSubtitle: () => 'setting.video.cur_qa'.trParams({
      'desc': VideoQuality.fromCode(Pref.defaultVideoQaCellular).desc,
    }),
    onTap: _showVideoCellularQaDialog,
  ),
  NormalModel(
    title: 'setting.video.default_audio_qa'.tr,
    leading: const Icon(Icons.music_video_outlined),
    getSubtitle: () => 'setting.video.cur_audio_qa'.trParams({
      'desc': AudioQuality.fromCode(Pref.defaultAudioQa).desc,
    }),
    onTap: _showAudioQaDialog,
  ),
  NormalModel(
    title: 'setting.video.cellular_audio_qa'.tr,
    leading: const Icon(Icons.music_video_outlined),
    getSubtitle: () => 'setting.video.cur_audio_qa'.trParams({
      'desc': AudioQuality.fromCode(Pref.defaultAudioQaCellular).desc,
    }),
    onTap: _showAudioCellularQaDialog,
  ),
  NormalModel(
    title: 'setting.video.live_default_qa'.tr,
    leading: const Icon(Icons.video_settings_outlined),
    getSubtitle: () => 'setting.video.cur_qa'.trParams({
      'desc': '${LiveQuality.fromCode(Pref.liveQuality)?.desc}',
    }),
    onTap: _showLiveQaDialog,
  ),
  NormalModel(
    title: 'setting.video.live_cellular_qa'.tr,
    leading: const Icon(Icons.video_settings_outlined),
    getSubtitle: () => 'setting.video.cur_qa'.trParams({
      'desc': '${LiveQuality.fromCode(Pref.liveQualityCellular)?.desc}',
    }),
    onTap: _showLiveCellularQaDialog,
  ),
  NormalModel(
    title: 'setting.video.decode_first'.tr,
    leading: const Icon(Icons.movie_creation_outlined),
    getSubtitle: () =>
        '首选解码格式：${(Pref.preferCodecs.map((i) => i.name).join(","))}，请根据设备支持情况与需求调整',
    onTap: _showCodecsDialog,
  ),
  if (kDebugMode || Platform.isAndroid)
    NormalModel(
      title: 'setting.video.audio_output'.tr,
      leading: const Icon(Icons.speaker_outlined),
      getSubtitle: () =>
          'setting.video.audio_output_cur'.trParams({'val': Pref.audioOutput}),
      onTap: _showAudioOutputDialog,
    ),
  NormalModel(
    title: 'setting.video.buffer_size'.tr,
    leading: const Icon(Icons.storage_outlined),
    getSubtitle: () => 'setting.video.buffer_size_desc'.trParams({
      'size': '${Pref.bufferSize}MB',
    }),
    onTap: _showBufferSizeDialog,
  ),
  NormalModel(
    title: 'setting.video.buffer_sec'.tr,
    leading: const Icon(Icons.av_timer),
    getSubtitle: () => 'setting.video.buffer_sec_desc'.trParams({
      'sec': '${Pref.bufferSec}s',
    }),
    onTap: _showBufferSecDialog,
  ),
  NormalModel(
    title: 'setting.video.autosync'.tr,
    leading: const Icon(Icons.sync_rounded),
    getSubtitle: () =>
        'setting.video.autosync_desc'.trParams({'val': Pref.autosync}),
    onTap: _showAutoSyncDialog,
  ),
  NormalModel(
    title: 'setting.video.video_sync'.tr,
    leading: const Icon(Icons.view_timeline_outlined),
    getSubtitle: () =>
        'setting.video.video_sync_desc'.trParams({'val': Pref.videoSync}),
    onTap: _showVideoSyncDialog,
  ),
  NormalModel(
    title: 'setting.video.hwdec'.tr,
    leading: const Icon(Icons.memory_outlined),
    getSubtitle: () =>
        'setting.video.hwdec_desc'.trParams({'val': Pref.hardwareDecoding}),
    onTap: _showHwDecDialog,
  ),
];

Future<void> _showCDNDialog(BuildContext context, VoidCallback setState) async {
  final res = await showDialog<CDNService>(
    context: context,
    builder: (context) => const CdnSelectDialog(),
  );
  if (res != null) {
    VideoUtils.cdnService = res;
    await GStorage.setting.put(SettingBoxKey.CDNService, res.name);
    setState();
  }
}

Future<void> _showLiveCDNDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  String host = Pref.liveCdnUrl ?? '';
  String? res = await showDialog<String>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('setting.video.input_cdn_host'.tr),
      content: TextFormField(
        initialValue: host,
        autofocus: true,
        onChanged: (value) => host = value,
      ),
      actions: [
        TextButton(
          onPressed: Get.back,
          child: Text(
            'common.cancel'.tr,
            style: TextStyle(color: ColorScheme.of(context).outline),
          ),
        ),
        TextButton(
          onPressed: () => Get.back(result: host),
          child: Text('common.confirm'.tr),
        ),
      ],
    ),
  );
  if (res != null) {
    if (res.isEmpty) {
      res = null;
      await GStorage.setting.delete(SettingBoxKey.liveCdnUrl);
    } else {
      if (!res.startsWith('http')) {
        res = 'https://$res';
      }
      await GStorage.setting.put(SettingBoxKey.liveCdnUrl, res);
    }
    VideoUtils.liveCdnUrl = res;
    setState();
  }
}

Future<void> _showVideoQaDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<int>(
    context: context,
    builder: (context) => SelectDialog<int>(
      title: 'setting.video.default_qa'.tr,
      value: Pref.defaultVideoQa,
      values: VideoQuality.values.map((e) => (e.code, e.desc)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.defaultVideoQa, res);
    setState();
  }
}

Future<void> _showVideoCellularQaDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<int>(
    context: context,
    builder: (context) => SelectDialog<int>(
      title: 'setting.video.cellular_qa'.tr,
      value: Pref.defaultVideoQaCellular,
      values: VideoQuality.values.map((e) => (e.code, e.desc)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(
      SettingBoxKey.defaultVideoQaCellular,
      res,
    );
    setState();
  }
}

Future<void> _showAudioQaDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<int>(
    context: context,
    builder: (context) => SelectDialog<int>(
      title: 'setting.video.default_audio_qa'.tr,
      value: Pref.defaultAudioQa,
      values: AudioQuality.values.map((e) => (e.code, e.desc)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.defaultAudioQa, res);
    setState();
  }
}

Future<void> _showAudioCellularQaDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<int>(
    context: context,
    builder: (context) => SelectDialog<int>(
      title: 'setting.video.cellular_audio_qa'.tr,
      value: Pref.defaultAudioQaCellular,
      values: AudioQuality.values.map((e) => (e.code, e.desc)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(
      SettingBoxKey.defaultAudioQaCellular,
      res,
    );
    setState();
  }
}

Future<void> _showLiveQaDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<int>(
    context: context,
    builder: (context) => SelectDialog<int>(
      title: 'setting.video.live_default_qa'.tr,
      value: Pref.liveQuality,
      values: LiveQuality.values.map((e) => (e.code, e.desc)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.liveQuality, res);
    setState();
  }
}

Future<void> _showLiveCellularQaDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<int>(
    context: context,
    builder: (context) => SelectDialog<int>(
      title: 'setting.video.live_cellular_qa'.tr,
      value: Pref.liveQualityCellular,
      values: LiveQuality.values.map((e) => (e.code, e.desc)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.liveQualityCellular, res);
    setState();
  }
}

Future<void> _showCodecsDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<List<VideoDecodeFormatType>>(
    context: context,
    builder: (context) => OrderedMultiSelectDialog<VideoDecodeFormatType>(
      title: '首选解码格式',
      initValues: Pref.preferCodecs,
      values: {for (final e in VideoDecodeFormatType.values) e: e.name},
    ),
  );
  if (res != null && res.isNotEmpty) {
    await GStorage.setting.put(
      SettingBoxKey.preferCodecs,
      res.map((i) => i.name).toList(),
    );
    setState();
  }
}

Future<void> _showAudioOutputDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<List<String>>(
    context: context,
    builder: (context) => OrderedMultiSelectDialog<String>(
      title: 'setting.video.audio_output'.tr,
      initValues: Pref.audioOutput.split(','),
      values: {
        for (final e in AudioOutput.values) e.name: e.label,
      },
    ),
  );
  if (res != null && res.isNotEmpty) {
    await GStorage.setting.put(
      SettingBoxKey.audioOutput,
      res.join(','),
    );
    setState();
  }
}

Future<void> _showVideoSyncDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<String>(
    context: context,
    builder: (context) => SelectDialog<String>(
      title: 'setting.video.video_sync'.tr,
      value: Pref.videoSync,
      values: const [
        'audio',
        'display-resample',
        'display-resample-vdrop',
        'display-resample-desync',
        'display-tempo',
        'display-vdrop',
        'display-adrop',
        'display-desync',
        'desync',
      ].map((e) => (e, e)).toList(),
    ),
  );
  if (res != null) {
    await GStorage.setting.put(SettingBoxKey.videoSync, res);
    setState();
  }
}

Future<void> _showHwDecDialog(
  BuildContext context,
  VoidCallback setState,
) async {
  final res = await showDialog<List<String>>(
    context: context,
    builder: (context) => OrderedMultiSelectDialog<String>(
      title: 'setting.video.hwdec'.tr,
      initValues: Pref.hardwareDecoding.split(','),
      values: {
        for (final e in HwDecType.values) e.hwdec: '${e.hwdec}\n${e.desc}',
      },
    ),
  );
  if (res != null && res.isNotEmpty) {
    await GStorage.setting.put(
      SettingBoxKey.hardwareDecoding,
      res.join(','),
    );
    setState();
  }
}

void _showAutoSyncDialog(BuildContext context, VoidCallback setState) {
  String autosync = Pref.autosync.toString();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('setting.video.autosync'.tr),
      content: TextFormField(
        autofocus: true,
        initialValue: autosync,
        keyboardType: TextInputType.number,
        onChanged: (value) => autosync = value,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
      actions: [
        TextButton(
          onPressed: Get.back,
          child: Text(
            'common.cancel'.tr,
            style: TextStyle(color: ColorScheme.of(context).outline),
          ),
        ),
        TextButton(
          onPressed: () async {
            try {
              // validate
              int.parse(autosync);
              Get.back();
              await GStorage.setting.put(SettingBoxKey.autosync, autosync);
              setState();
            } catch (e) {
              SmartDialog.showToast(e.toString());
            }
          },
          child: Text('common.confirm'.tr),
        ),
      ],
    ),
  );
}

void _showDecimalDialog(
  BuildContext context,
  VoidCallback setState, {
  required String key,
  required double defVal,
  required String title,
  required String? suffix,
}) {
  String value = (GStorage.setting.get(key) ?? defVal).toString();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: TextFormField(
        autofocus: true,
        initialValue: value,
        keyboardType: const .numberWithOptions(decimal: true),
        onChanged: (val) => value = val,
        inputFormatters: FilteringText.decimal,
        decoration: suffix == null ? null : InputDecoration(suffixText: suffix),
      ),
      actions: [
        TextButton(
          onPressed: Get.back,
          child: Text(
            'common.cancel'.tr,
            style: TextStyle(color: ColorScheme.of(context).outline),
          ),
        ),
        TextButton(
          onPressed: () async {
            try {
              final val = double.parse(value);
              Get.back();
              await GStorage.setting.put(key, val);
              setState();
            } catch (e) {
              SmartDialog.showToast(e.toString());
            }
          },
          child: Text('common.confirm'.tr),
        ),
      ],
    ),
  );
}

void _showBufferSizeDialog(BuildContext context, VoidCallback setState) =>
    _showDecimalDialog(
      context,
      setState,
      key: SettingBoxKey.bufferSize,
      defVal: Pref.bufferSize,
      title: 'setting.video.buffer_size'.tr,
      suffix: 'MB',
    );

void _showBufferSecDialog(BuildContext context, VoidCallback setState) =>
    _showDecimalDialog(
      context,
      setState,
      key: SettingBoxKey.bufferSec,
      defVal: Pref.bufferSec,
      title: 'setting.video.buffer_sec'.tr,
      suffix: 's',
    );
