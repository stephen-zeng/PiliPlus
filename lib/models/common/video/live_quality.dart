import 'package:get/get.dart';

enum LiveQuality {
  dolby(30000, 'enum.live_quality.dolby'),
  origin4K(25000, 'enum.live_quality.origin4k'),
  super4K(20000, 'enum.live_quality.super4k'),
  super2K(15000, 'enum.live_quality.super2k'),
  origin(10000, 'enum.live_quality.origin'),
  bluRay(400, 'enum.live_quality.blu_ray'),
  superHD(250, 'enum.live_quality.super_hd'),
  smooth(150, 'enum.live_quality.smooth'),
  flunt(80, 'enum.live_quality.fluent'),
  ;

  final int code;
  final String _descKey;
  const LiveQuality(this.code, this._descKey);

  String get desc => _descKey.tr;

  static LiveQuality? fromCode(int? code) {
    for (final e in LiveQuality.values) {
      if (e.code == code) {
        return e;
      }
    }
    return null;
  }
}
