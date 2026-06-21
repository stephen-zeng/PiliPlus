import 'package:get/get.dart';

enum AudioQuality {
  u_100010(100010, '100010', '100010'),
  u_100009(100009, '100009', '100009'),
  u_100008(100008, '100008', '100008'),
  hiRes(30251, 'enum.audio_quality.hi_res', 'Hi-Res'),
  dolby_30250(30250, 'enum.audio_quality.dolby', 'Dolby'),
  dolby_30255(30255, 'enum.audio_quality.dolby', 'Dolby'),
  k192(30280, '192K', '192K'),
  k132(30232, '132K', '132K'),
  k64(30216, '64K', '64K'),
  ;

  final int code;
  final String _descKey;
  final String shortDesc;

  const AudioQuality(this.code, this._descKey, this.shortDesc);

  String get desc => _descKey.startsWith('enum.') ? _descKey.tr : _descKey;

  static final _codeMap = {for (final i in values) i.code: i};

  static AudioQuality fromCode(int code) => _codeMap[code]!;
}
