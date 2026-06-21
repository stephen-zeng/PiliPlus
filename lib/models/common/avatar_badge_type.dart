import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum BadgeType {
  none(),
  vip('enum.badge.vip'),
  person('enum.badge.person', Color(0xFFFFCC00)),
  institution('enum.badge.institution', Colors.lightBlueAccent),
  ;

  final String? _descKey;
  final Color? color;
  const BadgeType([this._descKey, this.color]);
  String? get desc => _descKey?.tr;
}
