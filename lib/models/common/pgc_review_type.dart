import 'package:PiliPlus/http/api.dart';
import 'package:get/get.dart';

enum PgcReviewType {
  long(labelKey: 'enum.pgc_review.long', api: Api.pgcReviewL),
  short(labelKey: 'enum.pgc_review.short', api: Api.pgcReviewS),
  ;

  final String _labelKey;
  final String api;
  const PgcReviewType({
    required String labelKey,
    required this.api,
  }) : _labelKey = labelKey;

  String get label => _labelKey.tr;
}

enum PgcReviewSortType {
  def('enum.pgc_review_sort.def', 0),
  latest('enum.pgc_review_sort.latest', 1),
  ;

  final int sort;
  final String _labelKey;
  const PgcReviewSortType(this._labelKey, this.sort);

  String get label => _labelKey.tr;
}
