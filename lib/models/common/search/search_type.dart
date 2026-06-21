// ignore_for_file: constant_identifier_names
import 'package:get/get.dart';

enum SearchType {
  // all('综合'),
  video('enum.search_type.video'),
  media_bangumi('enum.search_type.media_bangumi'),
  media_ft('enum.search_type.media_ft'),
  live_room('enum.search_type.live_room'),
  bili_user('enum.search_type.bili_user'),
  article('enum.search_type.article'),
  ;

  final String _labelKey;
  const SearchType(this._labelKey);
  String get label => _labelKey.tr;
}
