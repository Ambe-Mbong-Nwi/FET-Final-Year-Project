import 'package:aproject/utils/constraints/colors.dart';
import 'package:flutter/material.dart';

class AChipTheme {
  AChipTheme._();

//theme for all Chips in light theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    backgroundColor: Colors.white,
    disabledColor: Colors.grey.withOpacity(0.5),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: AColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
  );

//theme for all Chips in dark theme
  static ChipThemeData darkChipTheme = ChipThemeData(
    backgroundColor: Colors.white,
    disabledColor: Colors.grey.withOpacity(0.5),
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: AColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
  );
}
