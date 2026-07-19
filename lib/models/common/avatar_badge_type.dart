import 'package:PiliPlus/utils/bili_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum BadgeType {
  none(),
  vip('enum.badge.vip'),
  person('enum.badge.person', BiliColors.yellow),
  institution('enum.badge.institution', Colors.lightBlueAccent),
  ;

  final String? _descKey;
  final Color? color;
  const BadgeType([this._descKey, this.color]);
  String? get desc => _descKey?.tr;
}
