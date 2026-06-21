import 'package:get/get.dart';

enum SuperChatType {
  valid('enum.super_chat.valid'),
  persist('enum.super_chat.persist'),
  disable('enum.super_chat.disable'),
  ;

  final String _key;
  const SuperChatType(this._key);

  String get title => _key.tr;
}
