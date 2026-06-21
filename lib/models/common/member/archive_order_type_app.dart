import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:get/get.dart';

enum ArchiveOrderTypeApp with EnumWithLabel {
  pubdate('enum.archive_order.pubdate'),
  click('enum.archive_order.click'),
  ;

  final String _labelKey;
  const ArchiveOrderTypeApp(this._labelKey);

  @override
  String get label => _labelKey.tr;
}
