import 'package:get/get.dart';

enum DynamicBadgeMode {
  hidden('enum.badge.hidden'),
  point('enum.badge.point'),
  number('enum.badge.number'),
  ;

  final String _key;
  const DynamicBadgeMode(this._key);

  String get desc => _key.tr;
}
