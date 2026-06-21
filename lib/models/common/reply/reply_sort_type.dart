import 'package:get/get.dart';

enum ReplySortType {
  time('enum.reply_sort.time_title', 'enum.reply_sort.time_label', textKey: 'enum.reply_sort.time_text'),
  hot('enum.reply_sort.hot_title', 'enum.reply_sort.hot_label', textKey: 'enum.reply_sort.hot_text'),
  select('enum.reply_sort.select_title', 'enum.reply_sort.select_label'),
  ;

  final String _titleKey;
  final String _labelKey;
  final String? _textKey;
  const ReplySortType(this._titleKey, this._labelKey, {String? textKey})
    : _textKey = textKey;

  String get title => _titleKey.tr;
  String get label => _labelKey.tr;
  String? get text => _textKey?.tr;
}
