import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFF8d0032);
const PrimaryColorLight = const Color(0xFFc2425b);
const PrimaryColorDark = const Color(0xFF59000b);

const SecondaryColor = const Color(0xFF00add3);
const SecondaryColorLight = const Color(0xFF60dfff);
const SecondaryColorDark = const Color(0xFF007ea2);

const Background = const Color(0xFFfffdf7);
const BackgroundDark = const Color(0xFF121212);

const PrimaryTextColor = const Color(0xFFffffff);
const SecondaryTextColor = const Color(0xFFd3f7ff);

class MyTheme {
  static final ThemeData defaultTheme = _buildLightTheme();
  static final ThemeData darkTheme = _buildDarkTheme();

  static ThemeData _buildLightTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      accentColor: SecondaryColor,
      accentColorBrightness: Brightness.light,

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
          title: base.textTheme.title.copyWith(
              color: PrimaryTextColor,
              fontSize: 30.0,
              fontFamily: 'Nunito Bold',
          ),
          body1: base.textTheme.body1.copyWith(
            color: PrimaryTextColor,
            fontSize: 26.0,
            fontFamily: 'Nunito Bold',
          ),
          body2: base.textTheme.body2.copyWith(
            color: SecondaryTextColor,
            fontSize: 22.0,
            fontFamily: 'Nunito',
            fontStyle: FontStyle.italic,
          ),
          caption: base.textTheme.caption.copyWith(
            color: SecondaryColor,
            fontFamily: 'Nunito',
          )
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