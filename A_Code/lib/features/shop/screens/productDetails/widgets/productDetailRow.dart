// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class productDetailRow extends StatelessWidget {
  const productDetailRow({
    super.key,
    required this.label,
    required this.value,
    this.LflexValue = 4,
    this.VflexValue = 5,
  });

  final String label;
  final String value;
  final int LflexValue;
  final int VflexValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: LflexValue,
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        Expanded(
            flex: VflexValue,
            child: Text(
              value,
              style: Theme.of(context).textTheme.headlineSmall,
            ))
      ],
    );
  }
}
