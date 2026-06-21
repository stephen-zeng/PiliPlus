import 'package:get/get.dart';

enum RankType {
  all('enum.rank.all', rid: 0),
  anime('enum.rank.anime', seasonType: 1),
  guochuang('enum.rank.guochuang', seasonType: 4),
  douga('enum.rank.douga', rid: 1005),
  music('enum.rank.music', rid: 1003),
  dance('enum.rank.dance', rid: 1004),
  game('enum.rank.game', rid: 1008),
  knowledge('enum.rank.knowledge', rid: 1010),
  tech('enum.rank.tech', rid: 1012),
  sports('enum.rank.sports', rid: 1018),
  car('enum.rank.car', rid: 1013),
  food('enum.rank.food', rid: 1020),
  animal('enum.rank.animal', rid: 1024),
  kichiku('enum.rank.kichiku', rid: 1007),
  fashion('enum.rank.fashion', rid: 1014),
  ent('enum.rank.ent', rid: 1002),
  cinephile('enum.rank.cinephile', rid: 1001),
  documentary('enum.rank.documentary', seasonType: 3),
  movie('enum.rank.movie', seasonType: 2),
  tv('enum.rank.tv', seasonType: 5),
  variety('enum.rank.variety', seasonType: 7),
  ;

  final String _labelKey;
  final int? rid;
  final int? seasonType;
  const RankType(this._labelKey, {this.rid, this.seasonType});

  String get label => _labelKey.tr;
}
