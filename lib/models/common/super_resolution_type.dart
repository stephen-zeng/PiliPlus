import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:get/get.dart';

enum SuperResolutionType with EnumWithLabel {
  disable('enum.super_resolution.disable'),
  efficiency('enum.super_resolution.efficiency'),
  quality('enum.super_resolution.quality'),
  ;

  @override
  String get label => _labelKey.tr;
  final String _labelKey;
  const SuperResolutionType(this._labelKey);
}
