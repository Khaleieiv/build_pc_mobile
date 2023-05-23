import 'package:build_pc_mobile/home/presentation/widgets/dark_light_theme_preference.dart';
import 'package:flutter/material.dart';

class DarkLightThemeProvider with ChangeNotifier {
  final darkThemePreference = DarkLightThemePreference();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value: value);

    notifyListeners();
  }
}
