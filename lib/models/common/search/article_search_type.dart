import 'package:get/get.dart';

enum ArticleOrderType {
  totalrank('enum.article_order.totalrank'),
  pubdate('enum.article_order.pubdate'),
  click('enum.article_order.click'),
  attention('enum.article_order.attention'),
  scores('enum.article_order.scores'),
  ;

  String get order => name;
  final String _labelKey;
  const ArticleOrderType(this._labelKey);
  String get label => _labelKey.tr;
}

enum ArticleZoneType {
  all('enum.article_zone.all', 0),
  douga('enum.article_zone.douga', 2),
  game('enum.article_zone.game', 1),
  cinephile('enum.article_zone.cinephile', 28),
  life('enum.article_zone.life', 3),
  interest('enum.article_zone.interest', 29),
  novel('enum.article_zone.novel', 16),
  tech('enum.article_zone.tech', 17),
  note('enum.article_zone.note', 41),
  ;

  final String _labelKey;
  final int categoryId;
  const ArticleZoneType(this._labelKey, this.categoryId);
  String get label => _labelKey.tr;
}
