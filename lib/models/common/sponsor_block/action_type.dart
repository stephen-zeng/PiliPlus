import 'package:get/get.dart';

enum ActionType {
  skip('enum.sb_action.skip'),
  mute('enum.sb_action.mute'),
  full('enum.sb_action.full'),
  poi('enum.sb_action.poi'),
  ;

  final String _titleKey;
  const ActionType(this._titleKey);
  String get title => _titleKey.tr;
}
