import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:get/get.dart';

enum MemberTabType {
  def('enum.member_tab.default'),
  home('enum.member_tab.home'),
  dynamic('enum.member_tab.dynamic'),
  contribute('enum.member_tab.contribute'),
  favorite('enum.member_tab.favorite'),
  bangumi('enum.member_tab.bangumi'),
  cheese('enum.member_tab.cheese'),
  shop('enum.member_tab.shop'),
  ;

  static bool showMemberShop = Pref.showMemberShop;

  static bool contains(String type) {
    if (type == shop.name && !showMemberShop) {
      return false;
    }
    for (final e in MemberTabType.values) {
      if (e.name == type) {
        return true;
      }
    }
    return false;
  }

  final String _titleKey;
  const MemberTabType(this._titleKey);

  String get title => _titleKey.tr;
}
