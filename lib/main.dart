import 'package:flutter/material.dart';
import 'package:flutter_ui_challange/challenge_1/login_one.dart';
import 'package:flutter_ui_challange/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: AAppTheme.lightTheme,
      darkTheme: AAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const LoginOne(),
    );
  }
}
