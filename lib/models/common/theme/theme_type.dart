import 'package:get/get.dart';
import 'package:PiliPlus/models/common/enum_with_label.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_ui/material_ui.dart';

enum ThemeType implements EnumWithLabel {
  light('enum.theme.light'),
  dark('enum.theme.dark'),
  system('enum.theme.system'),
  ;

  final String _labelKey;
  @override
  String get label => _labelKey.tr;
  const ThemeType(this._labelKey);

  ThemeMode get toThemeMode => switch (this) {
    ThemeType.light => ThemeMode.light,
    ThemeType.dark => ThemeMode.dark,
    ThemeType.system => ThemeMode.system,
  };

  Icon get icon => switch (this) {
    ThemeType.light => const Icon(MdiIcons.weatherSunny),
    ThemeType.dark => const Icon(MdiIcons.weatherNight),
    ThemeType.system => const Icon(MdiIcons.themeLightDark),
  };
}
