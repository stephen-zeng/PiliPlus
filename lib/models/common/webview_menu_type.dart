import 'package:get/get.dart';

enum WebviewMenuItem {
  refresh('enum.webview_menu.refresh'),
  copy('enum.webview_menu.copy'),
  openInBrowser('enum.webview_menu.open_browser'),
  clearCache('enum.webview_menu.clear_cache'),
  resetCookie('enum.webview_menu.reset_cookie'),
  goBack('enum.webview_menu.go_back'),
  ;

  final String _titleKey;
  const WebviewMenuItem(this._titleKey);
  String get title => _titleKey.tr;
}
