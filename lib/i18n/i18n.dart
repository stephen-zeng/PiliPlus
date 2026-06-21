import 'package:PiliPlus/i18n/strings/en_us.dart';
import 'package:PiliPlus/i18n/strings/ja_jp.dart';
import 'package:PiliPlus/i18n/strings/zh_cn.dart';
import 'package:get/get.dart';

/// GetX translations aggregator.
///
/// Register in [GetMaterialApp] via `translations: I18n()`.
/// Usage: `'about.title'.tr`, or with interpolation
/// `'about.cache_size'.trParams({'size': value})` (template uses `@size`).
class I18n extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'zh_CN': zhCN,
    'en_US': enUS,
    'ja_JP': jaJP,
  };
}
