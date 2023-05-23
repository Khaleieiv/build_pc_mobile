import 'package:shared_preferences/shared_preferences.dart';

class DarkLightThemePreference {
  static const themeStatus = "ThemeStatus";

  Future<bool> setDarkTheme({required bool value}) async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.setBool(themeStatus, value);
  }

  Future<bool> getTheme() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool(themeStatus) ?? false;
  }
}
