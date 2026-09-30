import 'package:get/get.dart';
import 'package:PiliPlus/models/common/enum_with_label.dart';

enum ReplySortType implements EnumWithLabel {
  time(
    'enum.reply_sort.time_title',
    'enum.reply_sort.time_label',
    label: 'enum.reply_sort.time_text',
  ),
  hot(
    'enum.reply_sort.hot_title',
    'enum.reply_sort.hot_label',
    label: 'enum.reply_sort.hot_text',
  ),
  select('enum.reply_sort.select_title', 'enum.reply_sort.select_label'),
  ;

  final String _labelKey;
  @override
  String get label => _labelKey.tr;
  final String _descKey;
  String get desc => _descKey.tr;
  final String _descShortKey;
  String get descShort => _descShortKey.tr;
  const ReplySortType(this._descKey, this._descShortKey, {String label = ''})
    : _labelKey = label;
}
