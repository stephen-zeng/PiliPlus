import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:get/get.dart';

enum PlayRepeat implements EnumWithLabel {
  pause('enum.play_repeat.pause'),
  listOrder('enum.play_repeat.list_order'),
  singleCycle('enum.play_repeat.single_cycle'),
  listCycle('enum.play_repeat.list_cycle'),
  autoPlayRelated('enum.play_repeat.auto_related'),
  ;

  @override
  String get label => _labelKey.tr;
  final String _labelKey;
  const PlayRepeat(this._labelKey);
}
