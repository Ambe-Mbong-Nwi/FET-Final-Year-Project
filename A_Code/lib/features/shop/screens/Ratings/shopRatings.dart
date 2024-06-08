// ignore_for_file: file_names, camel_case_types

import 'package:aproject/features/shop/screens/Ratings/widgets/generalRatingIndicator.dart';
import 'package:aproject/features/shop/screens/Ratings/widgets/userReviewCard.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class shopRating extends StatelessWidget {
  const shopRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //general rating. use import below
                  const generalRatingIndicator(),
                  RatingBarIndicator(
                    rating: 3.9,
                    itemSize: 20,
                    unratedColor: AColors.grey,
                    itemBuilder: (_, context) =>
                        const Icon(Iconsax.star1, color: AColors.primary),
                  ),

                  Text('1000', style: Theme.of(context).textTheme.bodySmall),
                  const SizedBox(height: ASizes.spaceBtwSections),
                  const userReviewCard(),
                  const userReviewCard(),
                  const userReviewCard(),
                ],
              ))),
    );
  }
}
