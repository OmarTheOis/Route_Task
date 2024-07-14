import 'package:flutter/material.dart';

class ThemeManager {
  static const Color primaryColor = Color(0xFF004182);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: primaryColor,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.white
      ),
      appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.transparent
      )
  );

}