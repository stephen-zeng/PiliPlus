import 'package:flutter/material.dart' show IconData, Icons;
import 'package:get/get.dart';

enum StatType {
  view(Icons.remove_red_eye_outlined, 'enum.stat.view'),
  danmaku(Icons.subtitles_outlined, 'enum.stat.danmaku'),
  like(Icons.thumb_up_outlined, 'enum.stat.like'),
  reply(Icons.comment_outlined, 'enum.stat.reply'),
  follow(Icons.favorite_border, 'enum.stat.follow'),
  play(Icons.play_circle_outlined, 'enum.stat.play'),
  listen(Icons.headset_outlined, 'enum.stat.play'),
  ;

  final IconData iconData;
  final String _labelKey;
  const StatType(this.iconData, this._labelKey);
  String get label => _labelKey.tr;
}
