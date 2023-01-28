import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeManager extends ChangeNotifier {
  static ThemeManager? _themeManager;

  final String _prefKey = "uiMode";

  ThemeMode _themeMode = ThemeMode.system;


  ThemeMode get themeMode => _themeMode;

  static ThemeManager get instance {
    if(_themeManager == null) {
      _themeManager = ThemeManager._();
    }

    return _themeManager!;
  }

  ThemeManager._();

  Future<void> switchTo(ThemeMode themeMode) async {
    if (themeMode != this.themeMode) {
      await _saveThemeInPrefs(themeMode);
      this._themeMode = themeMode;
      notifyListeners();
    }
  }

  Future<void> init() async {
    final pref = await SharedPreferences.getInstance();
    final uiMode = pref.getInt(_prefKey) ?? 0;
    switch (uiMode) {
      case 0:
        await switchTo(ThemeMode.system);
        break;

      case 1:
        await switchTo(ThemeMode.light);
        break;

      case 2:
        await switchTo(ThemeMode.dark);
        break;

      default:
        await switchTo(ThemeMode.system);
    }
  }

  Future<void> _saveThemeInPrefs(ThemeMode themeMode) async {
    final pref = await SharedPreferences.getInstance();
    int uiMode = 0;

    switch (themeMode) {
      case ThemeMode.system:
        uiMode = 0;
        break;

      case ThemeMode.light:
        uiMode = 1;
        break;

      case ThemeMode.dark:
        uiMode = 2;
        break;
    }

    final result = await pref.setInt(_prefKey, uiMode);
  }
}
