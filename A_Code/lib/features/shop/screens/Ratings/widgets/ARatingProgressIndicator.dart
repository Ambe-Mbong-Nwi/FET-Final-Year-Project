// ignore_for_file: file_names

import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ARatingProgressIndicator extends StatelessWidget {
  const ARatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: ADeviceUtils.getScreenWidth(context) *
                0.5, //using 50% of screen width
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10,
              backgroundColor: AColors.grey,
              valueColor: const AlwaysStoppedAnimation(AColors.primary),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        )
      ],
    );
  }
}
