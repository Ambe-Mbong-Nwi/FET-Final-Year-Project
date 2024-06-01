// ignore_for_file: file_names

import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

class AgridLayout extends StatelessWidget {
  const AgridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 310,
    required this.itemBuilder,
    this.crossAxisCount = 2,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, //2 cards on cross axis
          mainAxisSpacing: ASizes.gridViewSpacing,
          crossAxisSpacing: ASizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtent, //height of card
        ),
        itemBuilder: itemBuilder);
  }
}
