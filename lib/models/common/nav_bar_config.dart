import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:PiliPlus/pages/dynamics/view.dart';
import 'package:PiliPlus/pages/home/view.dart';
import 'package:PiliPlus/pages/mine/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum NavigationBarType implements EnumWithLabel {
  home(
    'enum.nav.home',
    Icon(Icons.home_outlined, size: 24),
    Icon(Icons.home, size: 24),
    HomePage(),
  ),
  dynamics(
    'enum.nav.dynamics',
    Icon(Icons.motion_photos_on_outlined, size: 21),
    Icon(Icons.motion_photos_on, size: 21),
    DynamicsPage(),
  ),
  mine(
    'enum.nav.mine',
    Icon(Icons.person_outline, size: 24),
    Icon(Icons.person, size: 24),
    MinePage(),
  ),
  ;

  @override
  String get label => _labelKey.tr;
  final String _labelKey;
  final Icon icon;
  final Icon selectIcon;
  final Widget page;

  const NavigationBarType(this._labelKey, this.icon, this.selectIcon, this.page);
}
