// ignore_for_file: file_names, camel_case_types

import 'package:aproject/features/shop/screens/Ratings/widgets/ARatingProgressIndicator.dart';
import 'package:flutter/material.dart';

class generalRatingIndicator extends StatelessWidget {
  const generalRatingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text('3.9', style: Theme.of(context).textTheme.displayLarge),
        ),
        const Expanded(
          //to avoid fitting constraints at linearprogressindicator
          flex: 7,
          child: Column(
            children: [
              ARatingProgressIndicator(text: '5', value: 1.0),
              ARatingProgressIndicator(text: '4', value: 0.5),
              ARatingProgressIndicator(text: '3', value: 0.1),
              ARatingProgressIndicator(text: '2', value: 0.2),
              ARatingProgressIndicator(text: '1', value: 0.4),
            ],
          ),
        )
      ],
    );
  }
}
