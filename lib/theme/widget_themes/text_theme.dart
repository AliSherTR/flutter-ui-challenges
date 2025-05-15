import 'package:flutter/material.dart';

class ATextTheme {
  ATextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 50,
      letterSpacing: 1,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
      height: 1.2,
    ),
    labelSmall: TextStyle(
      fontSize: 15,
      color: Colors.grey[600],
      fontWeight: FontWeight.normal,
    ),
    labelMedium: TextStyle(fontSize: 15, color: Colors.black87),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      color: Colors.white70,
    ),
    labelSmall: TextStyle(fontSize: 16, color: Colors.white),
    labelMedium: TextStyle(fontSize: 17, color: Colors.white),
  );
}
