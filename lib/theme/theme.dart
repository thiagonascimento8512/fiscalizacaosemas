import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _lightPrimaryColor = Colors.teal;
  static const Color _lightPrimaryVariantColor = Colors.teal;
  static const Color _lightSecondaryColor = Colors.teal;
  static const Color _lightOnPrimaryColor = Colors.white;

  static const Color _darkPrimaryColor = Colors.teal;
  static const Color _darkPrimaryVariantColor = Colors.teal;
  static const Color _darkSecondaryColor = Colors.teal;
  static const Color _darkOnPrimaryColor = Colors.white;

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _lightPrimaryColor,
    primaryColorDark: _lightPrimaryVariantColor,
    colorScheme: const ColorScheme.light(
      primary: _lightPrimaryColor,
      onPrimary: _lightOnPrimaryColor,
      primaryContainer: _lightPrimaryVariantColor,
      secondary: _lightSecondaryColor,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: _darkPrimaryColor,
    primaryColorDark: _darkPrimaryVariantColor,
    colorScheme: const ColorScheme.dark(
      primary: _darkPrimaryColor,
      onPrimary: _darkPrimaryColor,
      primaryContainer: _darkPrimaryVariantColor,
      secondary: _darkSecondaryColor,
      onSurface: _darkPrimaryColor,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: _darkOnPrimaryColor,
      ),
    ),
  );
}
