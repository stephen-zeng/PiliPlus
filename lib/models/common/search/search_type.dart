import 'package:get/get.dart';
// ignore_for_file: constant_identifier_names
import 'package:PiliPlus/http/api.dart';
import 'package:PiliPlus/models/common/enum_with_label.dart';

enum SearchType implements EnumWithLabel {
  all('enum.search_type.all', api: Api.searchAll),
  // 视频：video
  video('enum.search_type.video'),
  // 番剧：media_bangumi,
  media_bangumi('enum.search_type.media_bangumi'),
  // 影视：media_ft
  media_ft('enum.search_type.media_ft'),
  // 直播间及主播：live
  // live,
  // 直播间：live_room
  live_room('enum.search_type.live_room'),
  // 主播：live_user
  // live_user,
  // 话题：topic
  // topic,
  // 用户：bili_user
  bili_user('enum.search_type.bili_user'),
  // 专栏：article
  article('enum.search_type.article'),
  ;

  // 相簿：photo
  // photo

  final String _labelKey;
  @override
  String get label => _labelKey.tr;
  final String api;
  const SearchType(this._labelKey, {this.api = Api.searchByType});
}
