import 'package:flutter/material.dart';
import 'package:flutter_ui_challange/theme/widget_themes/text_input_theme.dart';
import 'package:flutter_ui_challange/theme/widget_themes/text_theme.dart';

class AAppTheme {
  static ThemeData lightTheme = ThemeData(
   brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ATextTheme.lightTextTheme,
    inputDecorationTheme: ATextInputTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: ATextTheme.darkTextTheme,
    inputDecorationTheme: ATextInputTheme.darkTheme,
  );
}
