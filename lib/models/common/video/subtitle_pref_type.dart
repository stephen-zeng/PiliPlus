import 'package:get/get.dart';

enum SubtitlePrefType {
  off('enum.subtitle_pref.off'),
  on('enum.subtitle_pref.on'),
  withoutAi('enum.subtitle_pref.without_ai'),
  auto('enum.subtitle_pref.auto'),
  ;

  final String _key;
  const SubtitlePrefType(this._key);

  String get desc => _key.tr;
}
