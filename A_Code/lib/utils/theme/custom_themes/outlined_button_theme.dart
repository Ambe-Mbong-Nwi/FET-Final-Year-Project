import 'package:flutter/material.dart';

class AOutlinedButtonTheme {
  AOutlinedButtonTheme._();

//theme for all elevated buttons in light theme
  static final lightOutlinedButtonThemeTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0, //removes height
      foregroundColor: Colors.black, //text color
      side: const BorderSide(color: Colors.brown), //border
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );

//theme for all elevated buttons in dark theme
  static final darkOutlinedButtonThemeTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0, //removes height
      foregroundColor: Colors.black, //text color
      side: const BorderSide(color: Colors.brown), //border
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}
