import 'package:PiliPlus/pages/later/child_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum LaterViewType {
  all(0, 'enum.later_view.all'),
  // toView(1, 'enum.later_view.to_view'),
  unfinished(2, 'enum.later_view.unfinished'),
  // viewed(3, 'enum.later_view.viewed'),
  ;

  Widget get page => LaterViewChildPage(laterViewType: this);

  final int type;
  final String _titleKey;
  const LaterViewType(this.type, this._titleKey);
  String get title => _titleKey.tr;
}
