import 'package:flutter/material.dart';

class AppThemeData {
  // 字号
  static const double _titleFontSize = 12;

  // 亮色主题
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.pink,
    primaryColor: Colors.white,
    primaryTextTheme: const TextTheme(
      headline6: TextStyle(
        color: Colors.black,
        fontSize: _titleFontSize,
        fontWeight: FontWeight.w500,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0.5,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
        fontSize: _titleFontSize,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
      size: 16,
    ),
  );
}

