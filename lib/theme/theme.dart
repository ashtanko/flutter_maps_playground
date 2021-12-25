import 'package:flutter/material.dart';
import 'package:flutter_base_template/gen/fonts.gen.dart';

class AppTheme {
  static ThemeData kDarkTheme = _buildDarkTheme();

  static ThemeData kLightTheme = _buildLightTheme();

  static ThemeData _buildDarkTheme() {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      primaryColor: Colors.white,
      appBarTheme: const AppBarTheme(color: Colors.deepPurple),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    );
  }

  static ThemeData _buildLightTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      primaryColor: Colors.black,
      appBarTheme: const AppBarTheme(color: Colors.cyan),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    );
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return base
        .copyWith(
            headline4: base.headline4?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 28.0,
        ))
        .apply(fontFamily: FontFamily.roboto);
  }
}
