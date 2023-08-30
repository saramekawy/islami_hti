import 'package:flutter/material.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color blackColor = Color(0xFF141A2E);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          //   showSelectedLabels: false,
          // showUnselectedLabels: false,
          backgroundColor: primaryColor,
          selectedItemColor: blackColor,
          unselectedItemColor: Colors.white));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          color: Colors.transparent, elevation: 0.0, centerTitle: true),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: blackColor,
          selectedItemColor: Color(0xFFFACC1D),
          unselectedItemColor: Colors.white));
}
