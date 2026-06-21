import 'package:PiliPlus/pages/fav/article/view.dart';
import 'package:PiliPlus/pages/fav/cheese/view.dart';
import 'package:PiliPlus/pages/fav/note/view.dart';
import 'package:PiliPlus/pages/fav/pgc/view.dart';
import 'package:PiliPlus/pages/fav/topic/view.dart';
import 'package:PiliPlus/pages/fav/video/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum FavTabType {
  video('enum.fav_tab.video', FavVideoPage()),
  bangumi('enum.fav_tab.bangumi', FavPgcPage(type: 1)),
  cinema('enum.fav_tab.cinema', FavPgcPage(type: 2)),
  article('enum.fav_tab.article', FavArticlePage()),
  note('enum.fav_tab.note', FavNotePage()),
  topic('enum.fav_tab.topic', FavTopicPage()),
  cheese('enum.fav_tab.cheese', FavCheesePage()),
  ;

  final String _titleKey;
  final Widget page;
  const FavTabType(this._titleKey, this.page);

  String get title => _titleKey.tr;
}
