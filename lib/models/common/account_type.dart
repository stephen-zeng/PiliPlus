import 'package:get/get.dart';

enum AccountType {
  main('enum.account_type.main'),
  heartbeat('enum.account_type.heartbeat'),
  recommend('enum.account_type.recommend'),
  video('enum.account_type.video'),
  ;

  final String _titleKey;
  const AccountType(this._titleKey);
  String get title => _titleKey.tr;
}
