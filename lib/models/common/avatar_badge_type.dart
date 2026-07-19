import 'package:PiliPlus/utils/bili_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum BadgeType {
  none(),
  vip('大会员'),
  person('认证个人', BiliColors.yellow),
  institution('认证机构', Colors.lightBlueAccent),
  ;

  final String? _descKey;
  final Color? color;
  const BadgeType([this._descKey, this.color]);
  String? get desc => _descKey?.tr;
}
