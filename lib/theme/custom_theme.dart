import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(
  fontFamily: 'SF Pro Display Family',
  primaryColor: const Color.fromRGBO(17, 4, 23, 1),
  textTheme: const TextTheme(
    labelLarge: TextStyle(
      fontSize: 14.0,
      color: Colors.white,
    ),
    labelMedium: TextStyle(
      fontSize: 12.0,
      color: Colors.white70,
    ),
  ),
  checkboxTheme: checkboxThemeData,
  inputDecorationTheme: inputDecorationTheme,
  brightness: Brightness.dark,
);

var checkboxThemeData = CheckboxThemeData(
  side: const BorderSide(
    width: 1.5,
    color: Color.fromRGBO(223, 0, 253, 1),
  ),
  checkColor: MaterialStateProperty.all(
    Color.fromRGBO(223, 0, 253, 1),
  ),
  fillColor: MaterialStateProperty.all(
    const Color.fromRGBO(17, 4, 23, 1),
  ),
);

var inputDecorationTheme = InputDecorationTheme(
  labelStyle: const TextStyle(color: Colors.white70),
  border: const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(14),
    ),
    borderSide:
        BorderSide(color: Color.fromRGBO(255, 255, 255, 0.05), width: 0.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(
        color: Color.fromRGBO(255, 255, 255, 0.05), width: 0.0),
    borderRadius: BorderRadius.circular(14),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(
        color: Color.fromRGBO(255, 255, 255, 0.05), width: 0.0),
    borderRadius: BorderRadius.circular(14),
  ),
  filled: true,
  fillColor: const Color.fromRGBO(255, 255, 255, 0.05),
);
