import 'package:flutter/material.dart';

class MyThemeDark {
  ThemeData themeData() {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      primaryColor: const Color(0xFF055AA3),
      highlightColor: const Color(0xFFEDF4F8),
      scaffoldBackgroundColor: const Color(0xFF121517),
      appBarTheme: const AppBarTheme(color: Color(0xFF121517)),
      cardColor: const Color(0XFFEDF4F8),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color(0xFF055AA3),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(
                fontSize: 12,
                fontFamily: 'Montserrat',
              ),
            )),
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: Color(0xFFEDF4F8),
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headline2: TextStyle(
          color: Color(0xFFEDF4F8),
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        bodyText1: TextStyle(
          color: Color(0xFFEDF4F8),
          fontSize: 14,
          fontFamily: 'Montserrat',
        ),
        bodyText2: TextStyle(
          color: Color(0xFFEDF4F8),
          fontSize: 12,
          fontFamily: 'Montserrat',
        ),
      ),
    );
  }
}
