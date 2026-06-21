import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:get/get.dart';

enum BarHideType with EnumWithLabel {
  instant('enum.bar_hide.instant'),
  sync('enum.bar_hide.sync'),
  ;

  @override
  String get label => _labelKey.tr;
  final String _labelKey;
  const BarHideType(this._labelKey);
}
