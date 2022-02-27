import 'package:flutter/material.dart';

class appTheme {
  static const Color primary = Colors.black;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
        color: primary,
        centerTitle: true,
        elevation: 0,
      ));
}
