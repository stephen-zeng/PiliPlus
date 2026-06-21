import 'package:get/get.dart';

enum MsgUnReadType {
  pm('enum.msg_unread.pm'),
  reply('enum.msg_unread.reply'),
  at('enum.msg_unread.at'),
  like('enum.msg_unread.like'),
  sysMsg('enum.msg_unread.sys_msg'),
  ;

  final String _key;
  const MsgUnReadType(this._key);

  String get title => _key.tr;
}
