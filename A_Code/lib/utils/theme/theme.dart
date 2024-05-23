import 'package:aproject/utils/theme/custom_themes/appbar_theme.dart';
import 'package:aproject/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:aproject/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:aproject/utils/theme/custom_themes/chip_theme.dart';
import 'package:aproject/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:aproject/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:aproject/utils/theme/custom_themes/text_field_theme.dart';
import 'package:aproject/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AAppTheme {
  AAppTheme._(); //so constuctor wont be used again and again

//static variable lightTheme storing ThemeData for that so we can easily call it
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true, //bcos we use it
      fontFamily: 'PlayfairDisplay',
      brightness: Brightness.light,
      primaryColor: const Color(0xFFF1A183),
      scaffoldBackgroundColor: Colors.white,
      textTheme: ATextTheme
          .lightTextTheme, //create a new class texttheme that defines this in the utils custom_themes text_theme file
      elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
      chipTheme: AChipTheme.lightChipTheme,
      appBarTheme: AAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: ABottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: ACheckBoxTheme.lightCheckBoxTheme,
      outlinedButtonTheme: AOutlinedButtonTheme.lightOutlinedButtonThemeTheme,
      inputDecorationTheme: ATextFormFieldTheme.lightInputDecorationTheme);

//themedata for dark theme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true, //bcos we use it
      fontFamily: 'PlayfairDisplay',
      brightness: Brightness.dark,
      primaryColor: const Color(0xFFF1A183),
      scaffoldBackgroundColor: Colors.black,
      textTheme: ATextTheme
          .darkTextTheme, //this is defined in the utils text_theme file
      elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
      chipTheme: AChipTheme.darkChipTheme,
      appBarTheme: AAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: ABottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: ACheckBoxTheme.darkCheckBoxTheme,
      outlinedButtonTheme: AOutlinedButtonTheme.darkOutlinedButtonThemeTheme,
      inputDecorationTheme: ATextFormFieldTheme.darkInputDecorationTheme);
}
