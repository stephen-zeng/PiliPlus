import 'package:get/get.dart';

enum FavOrderType {
  mtime('enum.fav_order.mtime'),
  view('enum.fav_order.view'),
  pubtime('enum.fav_order.pubtime'),
  ;

  final String _labelKey;
  const FavOrderType(this._labelKey);

  String get label => _labelKey.tr;
}
