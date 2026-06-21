import 'package:get/get.dart';

enum VideoQuality {
  hdrVivid(129, 'HDR Vivid', 'HDR Vivid'),
  super8k(127, 'enum.video_quality.super8k', '8K'),
  dolbyVision(126, 'enum.video_quality.dolby_vision', 'Dolby'),
  hdr(125, 'enum.video_quality.hdr', 'HDR'),
  super4K(120, 'enum.video_quality.super4k', '4K'),
  high108060(116, 'enum.video_quality.high1080_60', '1080P60'),
  high1080plus(112, 'enum.video_quality.high1080_plus', '1080P+'),
  high1080(80, 'enum.video_quality.high1080', '1080P'),
  high72060(74, 'enum.video_quality.high720_60', '720P60'),
  high720(64, 'enum.video_quality.high720', '720P'),
  clear480(32, 'enum.video_quality.clear480', '480P'),
  fluent360(16, 'enum.video_quality.fluent360', '360P'),
  speed240(6, 'enum.video_quality.speed240', '240P'),
  ;

  final int code;
  final String _descKey;
  final String shortDesc;

  const VideoQuality(this.code, this._descKey, this.shortDesc);

  String get desc => _descKey.startsWith('enum.') ? _descKey.tr : _descKey;

  static final _codeMap = {for (final i in values) i.code: i};

  static VideoQuality fromCode(int code) => _codeMap[code]!;
}
