import 'package:PiliPlus/pages/setting/models/extra_settings.dart';
import 'package:PiliPlus/pages/setting/models/model.dart';
import 'package:PiliPlus/pages/setting/models/play_settings.dart';
import 'package:PiliPlus/pages/setting/models/privacy_settings.dart';
import 'package:PiliPlus/pages/setting/models/recommend_settings.dart';
import 'package:PiliPlus/pages/setting/models/style_settings.dart';
import 'package:PiliPlus/pages/setting/models/video_settings.dart';
import 'package:get/get.dart';

enum SettingType {
  privacySetting('setting.privacy.title'),
  recommendSetting('setting.recommend.title'),
  videoSetting('setting.video.title'),
  playSetting('setting.play.title'),
  styleSetting('setting.style.title'),
  extraSetting('setting.extra.title'),
  webdavSetting('setting.webdav.title'),
  about('about.title'),
  ;

  final String _titleKey;
  const SettingType(this._titleKey);

  String get title => _titleKey.tr;

  List<SettingsModel> get settings => switch (this) {
    .privacySetting => privacySettings,
    .recommendSetting => recommendSettings,
    .videoSetting => videoSettings,
    .playSetting => playSettings,
    .styleSetting => styleSettings,
    .extraSetting => extraSettings,
    _ => throw UnimplementedError(),
  };
}
