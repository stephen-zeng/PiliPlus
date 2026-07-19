import 'package:PiliPlus/common/widgets/custom_icon.dart';
import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:PiliPlus/pages/dynamics/view.dart';
import 'package:PiliPlus/pages/home/view.dart';
import 'package:PiliPlus/pages/mine/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum NavigationBarType implements EnumWithLabel {
  home(
    'enum.nav.home',
    Icon(Icons.home_outlined),
    Icon(Icons.home),
    HomePage(),
  ),
  dynamics(
    'enum.nav.dynamics',
    Icon(CustomIcons.motion_photos_on_outlined),
    Icon(CustomIcons.motion_photos_on),
    DynamicsPage(),
  ),
  mine(
    'enum.nav.mine',
    Icon(Icons.person_outline),
    Icon(Icons.person),
    MinePage(),
  ),
  ;

  @override
  String get label => _labelKey.tr;
  final String _labelKey;
  final Icon icon;
  final Icon selectIcon;
  final Widget page;

  const NavigationBarType(
    this._labelKey,
    this.icon,
    this.selectIcon,
    this.page,
  );
}
