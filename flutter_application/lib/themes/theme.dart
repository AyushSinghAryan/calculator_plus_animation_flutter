import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._(); // private constructor

  static const _primaryColorLight = Colors.purpleAccent;

  static const _primaryColorDark = Colors.blueGrey;
  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColorLight, brightness: Brightness.light));

  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColorDark, brightness: Brightness.dark));
}
