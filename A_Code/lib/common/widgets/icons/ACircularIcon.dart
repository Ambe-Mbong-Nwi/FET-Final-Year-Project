// ignore_for_file: file_names

import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

class ACircularIcon extends StatelessWidget {
  const ACircularIcon({
    super.key,
    required this.dark,
    this.width,
    this.height,
    this.size = ASizes.iconLg,
    required this.icon,
    this.iconColor,
    this.backgroundColor,
    this.onPressed,
  });

  final bool dark;
  final double? width, height, size;
  final IconData icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: backgroundColor
          // color: dark
          //     ? AColors.dark.withOpacity(0.9)
          //     : AColors.white.withOpacity(0.9),
          ),
      child: IconButton(
          onPressed: () {}, icon: Icon(icon, color: iconColor, size: size)),
    );
  }
}
