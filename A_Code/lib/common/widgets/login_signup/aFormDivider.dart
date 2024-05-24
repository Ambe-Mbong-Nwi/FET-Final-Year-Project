// ignore_for_file: camel_case_types, file_names

import 'package:aproject/utils/constraints/colors.dart';
import 'package:flutter/material.dart';

class aFormDivider extends StatelessWidget {
  const aFormDivider(
      {super.key, required this.dark, required this.dividertext});

  final bool dark;
  final String dividertext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
              color: dark ? AColors.darkGrey : AColors.darkGrey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5),
        ),
        Text(dividertext, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
              color: dark ? AColors.darkGrey : AColors.darkGrey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60),
        ),
      ],
    );
  }
}
