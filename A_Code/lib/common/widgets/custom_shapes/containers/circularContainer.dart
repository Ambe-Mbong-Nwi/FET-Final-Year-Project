// ignore_for_file: file_names

import 'package:aproject/utils/constraints/colors.dart';
import 'package:flutter/material.dart';

class ACircularContainer extends StatelessWidget {
  const ACircularContainer({
    super.key,
    this.width = 400, //default values but can be changed
    this.height = 400,
    this.radius = 400, //for circular, radius should be = or > width and height
    this.padding,
    this.margin,
    this.child,
    this.backgroundColor = AColors.white,
  });

//to make widget reusable, use properties instead with ? meaning optional. No required keyword above.
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding, margin;
  final Widget? child;
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
      ),
      child: child,
    );
  }
}
