import 'package:flutter/material.dart';
import 'package:semasfiscalizacao/theme/theme.dart';

class ThemeManager extends ChangeNotifier {
  static final ThemeManager _instance = ThemeManager._internal();
  factory ThemeManager() => _instance;
  ThemeManager._internal();

  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  set themeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }

  bool get isDarkMode => _themeMode == ThemeMode.dark;
  bool get isLightMode => _themeMode == ThemeMode.light;
  bool get isSystemMode => _themeMode == ThemeMode.system;

  ThemeData get theme => isDarkMode ? darkTheme : lightTheme;

  ThemeData get lightTheme => AppTheme.lightTheme;

  ThemeData get darkTheme => AppTheme.darkTheme;
}
