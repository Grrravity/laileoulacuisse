import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFF0d46a0);
const PrimaryColorLight = const Color(0xFF5471d2);
const PrimaryColorDark = const Color(0x002071);

const SecondaryColor = const Color(0xFF795548);
const SecondaryColorLight = const Color(0xFFa98274);
const SecondaryColorDark = const Color(0xFF4b2c20);

const Background = const Color(0xFFfffdf7);
const BackgroundDark = const Color(0xFF121212);

const PrimaryTextColor = const Color(0xFFffffff);
const SecondaryTextColor = const Color(0xFFa98274);

class MyTheme {
  static final ThemeData defaultTheme = _buildLightTheme();
  static final ThemeData darkTheme = _buildDarkTheme();

  static ThemeData _buildLightTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      accentColor: SecondaryColor,
      accentColorBrightness: Brightness.dark,

      primaryColor: PrimaryColor,
      primaryColorDark: PrimaryColorDark,
      primaryColorLight: PrimaryColorLight,
      primaryColorBrightness: Brightness.dark,

      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: SecondaryColor,
        textTheme: ButtonTextTheme.primary,
      ),

      scaffoldBackgroundColor: Background,
      cardColor: Background,
      textSelectionColor: PrimaryColorLight,
      backgroundColor: Background,

      textTheme: base.textTheme.copyWith(
          title: base.textTheme.title.copyWith(color: PrimaryTextColor),
          body1: base.textTheme.body1.copyWith(color: PrimaryTextColor),
          body2: base.textTheme.body2.copyWith(color: SecondaryTextColor)
      ),
    );
  }

  static ThemeData _buildDarkTheme() {
    final ThemeData base = ThemeData.dark();

    return base.copyWith(
      accentColor: SecondaryColor,
      accentColorBrightness: Brightness.dark,

      primaryColor: PrimaryColor,
      primaryColorDark: PrimaryColorDark,
      primaryColorLight: PrimaryColorLight,
      primaryColorBrightness: Brightness.dark,

      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: SecondaryColor,
        textTheme: ButtonTextTheme.primary,
      ),

      scaffoldBackgroundColor: BackgroundDark,
      cardColor: BackgroundDark,
      textSelectionColor: PrimaryColorLight,
      backgroundColor: Background,

      textTheme: base.textTheme.copyWith(
          title: base.textTheme.title.copyWith(color: PrimaryTextColor),
          body1: base.textTheme.body1.copyWith(color: PrimaryTextColor),
          body2: base.textTheme.body2.copyWith(color: SecondaryTextColor)
      ),
    );
  }

}