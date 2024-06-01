// ignore_for_file: file_names

import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class cardImageContainer extends StatelessWidget {
  const cardImageContainer({
    super.key,
    this.width,
    this.height,
    this.margin,
    this.radius = ASizes
        .cardRadiusLg, //for circular, radius should be = or > width and height
    this.padding,
    this.child,
    this.showBorder = false,
    this.borderColor = AColors.borderPrimary,
    this.backgroundColor = AColors.white,
  });

//to make widget reusable, use properties instead with ? meaning optional. No required keyword above.
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
