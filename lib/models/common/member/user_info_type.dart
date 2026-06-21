import 'package:flutter/material.dart' show Alignment;
import 'package:get/get.dart';

enum UserInfoType {
  fan('enum.user_info.fan', .centerLeft),
  follow('enum.user_info.follow', .center),
  like('enum.user_info.like', .centerRight),
  ;

  final String _titleKey;
  final Alignment alignment;

  const UserInfoType(this._titleKey, this.alignment);
  String get title => _titleKey.tr;
}
