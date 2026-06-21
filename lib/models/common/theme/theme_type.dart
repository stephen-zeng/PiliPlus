import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum ThemeType {
  light('enum.theme.light'),
  dark('enum.theme.dark'),
  system('enum.theme.system'),
  ;

  final String _key;
  const ThemeType(this._key);

  String get desc => _key.tr;

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
