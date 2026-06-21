import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:get/get.dart';

enum SkipType implements EnumWithLabel {
  alwaysSkip('enum.skip.always'),
  skipOnce('enum.skip.once'),
  skipManually('enum.skip.manual'),
  showOnly('enum.skip.show_only'),
  disable('enum.skip.disable'),
  ;

  @override
  String get label => _labelKey.tr;
  final String _labelKey;
  const SkipType(this._labelKey);
}
