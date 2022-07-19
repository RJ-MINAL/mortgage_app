import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromRGBO(109, 99, 255, 1);
  static const Color fontColor = Color.fromRGBO(119, 119, 119, 1);

  static final lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: primary,
    scaffoldBackgroundColor: primary,

    // BottonNavigationBarTheme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.black54,
      selectedItemColor: primary,
    ),

    iconTheme: const IconThemeData(color: Colors.black54),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: const Color.fromRGBO(199, 99, 255, 1),
  );
}
