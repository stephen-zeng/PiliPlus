import 'package:get/get.dart';

enum BtmProgressBehavior {
  alwaysShow('enum.btm_progress.always_show'),
  alwaysHide('enum.btm_progress.always_hide'),
  onlyShowFullScreen('enum.btm_progress.only_show_fullscreen'),
  onlyHideFullScreen('enum.btm_progress.only_hide_fullscreen'),
  ;

  final String _key;
  const BtmProgressBehavior(this._key);

  String get desc => _key.tr;
}
