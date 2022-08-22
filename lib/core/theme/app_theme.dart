import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  // Light Theme Colors.
  static Color lightBackgroundColor = const Color(0xfff0f8f6);
  static Color lightPrimaryColor = const Color(0xff322e39);
  static Color lightSecondaryColor = const Color(0xff73738b);
  static Color lightTertiaryColor = const Color(0xffbcbcc8);
  static Color lightAccentColor = const Color(0xff09c23e);
  static Color lightErrorColor = const Color(0xffe63946);

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: lightBackgroundColor,
    errorColor: lightErrorColor,
    primaryColor: lightPrimaryColor,
    accentColor: lightAccentColor,
    textTheme: _textTheme,
    colorScheme: _colorScheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final _textTheme = const TextTheme().copyWith(
    headline4: TextStyle(
      color: lightPrimaryColor,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      color: lightPrimaryColor,
      fontWeight: FontWeight.bold,
    ),
  );

  static final _colorScheme = ColorScheme.light(
    secondary: lightSecondaryColor,
    tertiary: lightTertiaryColor,
  );
}
