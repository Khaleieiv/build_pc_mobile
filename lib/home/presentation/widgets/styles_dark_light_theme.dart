import 'package:flutter/material.dart';

class StylesDarkLightTheme {
  static const ColorScheme lightColorScheme = ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.green,
    surface: Colors.white,
    background: Color(0xFFF1F4F8),
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
  );

  static const ColorScheme darkColorScheme = ColorScheme.dark(
    primary: Colors.blue,
    secondary: Colors.green,
    surface: Colors.black,
    background: Color(0xFF14181B),
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.white,
  );

  static ThemeData themeData({required bool isDarkTheme}) {
    final colorScheme = isDarkTheme ? darkColorScheme : lightColorScheme;

    return ThemeData.from(
      colorScheme: colorScheme,
    );
  }
}
