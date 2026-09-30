import 'package:get/get.dart';
import 'package:PiliPlus/models/common/enum_with_label.dart';

enum DynamicBadgeMode implements EnumWithLabel {
  hidden('enum.badge.hidden'),
  point('enum.badge.point'),
  number('enum.badge.number'),
  ;

  final String _labelKey;
  @override
  String get label => _labelKey.tr;
  const DynamicBadgeMode(this._labelKey);
}
