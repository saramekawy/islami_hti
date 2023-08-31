import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color blackColor = Color(0xFF141A2E);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: primaryColor),
        titleTextStyle: GoogleFonts.elMessiri(
          color: const Color(0xFF242424),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: const Color(0xFF242424)),
        bodyMedium: GoogleFonts.sacramento(
            fontWeight: FontWeight.w100,
            fontSize: 22,
            color: const Color(0xFF242424)),
        bodySmall:
            GoogleFonts.sacramento(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: primaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          color: Colors.transparent, elevation: 0.0, centerTitle: true),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w600, fontSize: 25, color: Colors.white),
        bodyMedium: GoogleFonts.sacramento(
            fontWeight: FontWeight.w100, fontSize: 22, color: Colors.white),
        bodySmall: GoogleFonts.sacramento(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: blackColor,
          selectedItemColor: Color(0xFFFACC1D),
          unselectedItemColor: Colors.white));
}
