import 'package:get/get.dart';

enum AudioNormalization {
  disable('enum.audio_norm.disable'),
  // ref https://github.com/KRTirtho/spotube/commit/da10ab2e291d4ba4d3082b9a6ae535639fb8f1b7
  dynaudnorm('enum.audio_norm.dynaudnorm', 'dynaudnorm=g=5:f=250:r=0.9:p=0.5'),
  loudnorm('enum.audio_norm.loudnorm', 'loudnorm=I=-16:LRA=11:TP=-1.5'),
  custom('enum.audio_norm.custom'),
  ;

  final String _titleKey;
  final String param;
  const AudioNormalization(this._titleKey, [this.param = '']);

  String get title => _titleKey.tr;

  static String getTitleFromConfig(String config) => switch (config) {
    '0' => disable.title,
    '1' => dynaudnorm.title,
    '2' => loudnorm.title,
    _ => config,
  };

  static String getParamFromConfig(String config) => switch (config) {
    '0' => disable.param,
    '1' => dynaudnorm.param,
    '2' => loudnorm.param,
    _ => config,
  };
}
