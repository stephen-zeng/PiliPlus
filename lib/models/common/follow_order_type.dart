import 'package:get/get.dart';

enum FollowOrderType {
  def('', 'enum.follow_order.def'),
  attention('attention', 'enum.follow_order.attention'),
  ;

  final String type;
  final String _titleKey;

  const FollowOrderType(this.type, this._titleKey);
  String get title => _titleKey.tr;
}
