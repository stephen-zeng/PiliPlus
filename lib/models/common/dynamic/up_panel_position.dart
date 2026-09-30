import 'package:get/get.dart';
import 'package:PiliPlus/models/common/enum_with_label.dart';

enum UpPanelPosition implements EnumWithLabel {
  top('enum.up_panel.top'),
  leftFixed('enum.up_panel.left_fixed'),
  rightFixed('enum.up_panel.right_fixed'),
  leftDrawer('enum.up_panel.left_drawer'),
  rightDrawer('enum.up_panel.right_drawer'),
  ;

  final String _labelKey;
  @override
  String get label => _labelKey.tr;
  const UpPanelPosition(this._labelKey);
}
