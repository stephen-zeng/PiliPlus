import 'package:get/get.dart';

enum DmBlockType {
  keyword('enum.dm_block.keyword'),
  regex('enum.dm_block.regex'),
  uid('enum.dm_block.uid'),
  ;

  final String _labelKey;
  const DmBlockType(this._labelKey);

  String get label => _labelKey.tr;
}
