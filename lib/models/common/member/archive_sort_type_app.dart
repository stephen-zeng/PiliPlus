import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:get/get.dart';

enum ArchiveSortTypeApp with EnumWithLabel {
  desc('enum.archive_sort.desc'),
  asc('enum.archive_sort.asc'),
  ;

  final String _labelKey;
  const ArchiveSortTypeApp(this._labelKey);

  @override
  String get label => _labelKey.tr;
}
