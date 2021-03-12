import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ThemeData AppTheme = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: const Color(0xffbb86fc),
    primaryVariant: const Color(0xff3700B3),
    secondary: const Color(0xff03dac6),
    secondaryVariant: const Color(0xff03dac6),
    background: const Color(0xff121212),
    surface: const Color(0xff1f1f1f),
    error: const Color(0xffcf6679),
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onBackground: Colors.white,
    onSurface: Colors.white,
    onError: Colors.black,
  ),
  scaffoldBackgroundColor: const Color(0xff121212),
  errorColor: const Color(0xffcf6679),
  appBarTheme: AppBarTheme(
    color: const Color(0xff1f1f1f),
    elevation: 1,
  ),
  bottomAppBarTheme: BottomAppBarTheme(
    color: const Color(0xff1f1f1f),
  ),
  cardTheme: CardTheme(
    color: const Color(0xff1f1f1f),
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
  ),
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: const Color(0xff1f1f1f),
    elevation: 2,
    behavior: SnackBarBehavior.floating,
    contentTextStyle: TextStyle(
      color: Colors.white,
    ),
    actionTextColor: const Color(0xffbb86fc),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: const Color(0xff1f1f1f),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
    ),
  ),
  dialogTheme: DialogTheme(
    backgroundColor: const Color(0xff1f1f1f),
    elevation: 1,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: const Color(0xffbb86fc),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.5,
        color: Colors.white,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.5,
        color: const Color(0xffbb86fc),
      ),
    ),
  ),
);
