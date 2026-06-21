import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum ReplyOptionType {
  allow('enum.reply_option.allow'),
  close('enum.reply_option.close'),
  choose('enum.reply_option.choose'),
  ;

  final String _titleKey;
  const ReplyOptionType(this._titleKey);

  String get title => _titleKey.tr;

  IconData get iconData => switch (this) {
    ReplyOptionType.allow => MdiIcons.commentTextOutline,
    ReplyOptionType.close => MdiIcons.commentOffOutline,
    ReplyOptionType.choose => MdiIcons.commentProcessingOutline,
  };
}
