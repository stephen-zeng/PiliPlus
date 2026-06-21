import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

enum LanguageType implements EnumWithLabel {
  system,
  zhCN,
  enUS,
  jaJP;

  /// `null` means follow the system locale.
  Locale? get locale => switch (this) {
    LanguageType.system => null,
    LanguageType.zhCN => const Locale('zh', 'CN'),
    LanguageType.enUS => const Locale('en', 'US'),
    LanguageType.jaJP => const Locale('ja', 'JP'),
  };

  /// Language self-names are conventionally shown untranslated;
  /// only "follow system" is localized.
  @override
  String get label => switch (this) {
    LanguageType.system => 'setting.language.system'.tr,
    LanguageType.zhCN => 'general.simplified_chinese'.tr,
    LanguageType.enUS => 'English',
    LanguageType.jaJP => 'general.japanese'.tr,
  };
}
