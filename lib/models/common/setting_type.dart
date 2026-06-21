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

  final String key;
  const SettingType(this.key);

  String get title => key.tr;
}
