import 'package:get/get.dart';

enum UserOrderType {
  def('enum.user_order.def', 0, ''),
  fansDesc('enum.user_order.fans_desc', 0, 'fans'),
  fansAsc('enum.user_order.fans_asc', 1, 'fans'),
  levelDesc('enum.user_order.level_desc', 0, 'level'),
  levelAsc('enum.user_order.level_asc', 1, 'level'),
  ;

  final String _labelKey;
  final int orderSort;
  final String order;
  const UserOrderType(this._labelKey, this.orderSort, this.order);
  String get label => _labelKey.tr;
}

enum UserType {
  all('enum.user_type.all'),
  up('enum.user_type.up'),
  common('enum.user_type.common'),
  verified('enum.user_type.verified'),
  ;

  final String _labelKey;
  const UserType(this._labelKey);
  String get label => _labelKey.tr;
}
