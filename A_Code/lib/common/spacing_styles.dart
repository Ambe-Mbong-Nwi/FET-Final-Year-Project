import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

class ASpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: ASizes.appBarHeight,
    left: ASizes.defaultSpace,
    right: ASizes.defaultSpace,
    bottom: ASizes.defaultSpace,
  );
}
