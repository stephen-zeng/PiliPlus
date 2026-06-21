import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:get/get.dart';

enum ArchiveOrderTypeWeb with EnumWithLabel {
  pubdate('enum.archive_order.pubdate'),
  click('enum.archive_order.click'),
  stow('enum.archive_order.stow'),
  ;

  final String _labelKey;
  const ArchiveOrderTypeWeb(this._labelKey);

  @override
  String get label => _labelKey.tr;
}
