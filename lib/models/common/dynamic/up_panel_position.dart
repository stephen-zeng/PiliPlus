import 'package:get/get.dart';

enum UpPanelPosition {
  top('enum.up_panel.top'),
  leftFixed('enum.up_panel.left_fixed'),
  rightFixed('enum.up_panel.right_fixed'),
  leftDrawer('enum.up_panel.left_drawer'),
  rightDrawer('enum.up_panel.right_drawer'),
  ;

  final String _key;
  const UpPanelPosition(this._key);

  String get label => _key.tr;
}
