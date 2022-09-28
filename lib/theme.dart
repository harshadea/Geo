import 'package:flutter/material.dart';
import 'package:geo/colors.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outLineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: TextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
    enabledBorder: outLineInputBorder,
    focusedBorder: outLineInputBorder,
    border: outLineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: TextColor),
    bodyText2: TextStyle(color: TextColor),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18),
    ),
  );
}
