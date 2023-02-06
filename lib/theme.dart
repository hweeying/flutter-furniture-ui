import 'package:flutter/material.dart';

final ThemeData AppThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppTheme.themeColor[100],
  primarySwatch:
      MaterialColor(AppTheme.themeColor[100]!.value, AppTheme.themeColor),
  bottomAppBarColor: AppTheme.themeColor[100],
);

class AppTheme {
  static const Map<int, Color> themeColor = <int, Color>{
    100: Color(0xFFc6c4c2),
    200: Color(0xFFb4b3b0),
    300: Color(0xFF928f8b),
    400: Color(0xFF807e79),
    500: Color(0xFF6e6c67),
    600: Color(0xFF5b5a56),
    700: Color(0xFF494845),
    800: Color(0xFF373633),
    900: Color(0xFF242422)
  };
  static const Color activeColor = Color(0xFFFFC700);
}

class AppTextStyle {
  static const TextStyle appTitle = TextStyle(
      fontSize: 36, fontWeight: FontWeight.bold, fontFamily: "Montserrat");
  static const TextStyle title = TextStyle(
      fontSize: 32, fontWeight: FontWeight.bold, fontFamily: "Montserrat");
  static const TextStyle button = TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat");
  static const TextStyle header1 = TextStyle(
      fontSize: 42, fontWeight: FontWeight.w600, fontFamily: "Montserrat");
  static const TextStyle body = TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat");
  static TextStyle hint = TextStyle(
      fontSize: 12,
      color: AppTheme.themeColor[100],
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat");
  static TextStyle productName = TextStyle(
      fontSize: 18,
      color: AppTheme.themeColor[100],
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat");
  static TextStyle price = const TextStyle(
      fontSize: 20,
      color: AppTheme.activeColor,
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat");
}
