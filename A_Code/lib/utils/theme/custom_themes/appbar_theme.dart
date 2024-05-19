import 'package:flutter/material.dart';

class AAppBarTheme {
  AAppBarTheme._();

//theme for all AppBar in light theme
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0, //removes height
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.w600),
  );

//theme for all AppBar in dark theme
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0, //removes height
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w600),
  );
}
