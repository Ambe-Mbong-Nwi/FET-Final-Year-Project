//this was refactored to a class bcos i have 3 onboarding pages with same properties just difference in contents. Less code using this method.
//now you can call this func above 3 times.
// ignore_for_file: file_names

import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: Column(
          children: [
            //onboarding image
            Image(
              //using 80% 0s screen width with the aid of Helperfunc already created to get present screen width.
              height: AHelperFunctions.screenHeight() * 0.6,
              width: AHelperFunctions.screenWidth() * 0.8,
              image: AssetImage(image),
            ),

            //onboarding title
            Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),

            //for spacing, using sizes defined in the constraints.
            const SizedBox(height: ASizes.spaceBtwSections),

            //onboarding subtitle
            Text(
              subTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
