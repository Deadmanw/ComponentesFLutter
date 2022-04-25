import 'package:flutter/material.dart';

class appTheme {
  static const Color primary = Colors.black;
  static const Color second = Colors.red;
  static const Color butonColor = Colors.green;
  static const Color indigoColor = Colors.indigo;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      centerTitle: true,
      elevation: 0,
    ),
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: second)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: butonColor, elevation: 5),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: indigoColor,
        shape: const StadiumBorder(),
        elevation: 5,
      ),
    ),
    //input decoratio
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: indigoColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: indigoColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: indigoColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    ),
  );

  //rareTheme
  static final ThemeData rareTheme = ThemeData().copyWith();
}
