// ignore_for_file: file_names, camel_case_types

import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class userReviewCard extends StatelessWidget {
  const userReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final bool dark = AHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        //picture, name, more
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(AImages.myImage),
                ),
                const SizedBox(width: ASizes.spaceBtwItems),
                Text('Ambe Boo', style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),

        const SizedBox(height: ASizes.spaceBtwItems / 2),

        //review
        Row(
          children: [
            //const ARatingStarIndicator(rating: 3.0),
            const SizedBox(height: ASizes.spaceBtwItems),
            Text('06 June, 2024',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ASizes.spaceBtwItems),

        //description text and readmore. package in pubspec
        const ReadMoreText(
          "Ambe's shop sells the best cabbages. I secured 2 units via message and collected them after school, no arguments.",
          trimLines: 2,
          trimMode: TrimMode.Line, //triggers above so u see 2 lines
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AColors.primary),
        ),
        const SizedBox(height: ASizes.spaceBtwItems * 2),
      ],
    );
  }
}
