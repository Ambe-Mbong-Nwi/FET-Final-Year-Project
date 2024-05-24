//designed the page layout in onboarding.dart, and used onboarding_controller class for all the controls.
//

// ignore_for_file: camel_case_types, file_names

import 'package:aproject/features/seller/sellerAuthentication/sellerAscreens/sellerOnBoarding/widgets/sellerOnBoardingDotNavigation.dart';
import 'package:aproject/features/seller/sellerAuthentication/sellerAscreens/sellerOnBoarding/widgets/sellerOnBoardingNextButton.dart';
import 'package:aproject/features/seller/sellerAuthentication/sellerAscreens/sellerOnBoarding/widgets/sellerOnBoardingPage.dart';
import 'package:aproject/features/seller/sellerAuthentication/sellerAscreens/sellerOnBoarding/widgets/sellerOnBoardingSkip.dart';
import 'package:aproject/features/seller/sellerAuthentication/sellerControllersOnboarding/sellerOnBoardingController.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class sellerOnBoardingScreen extends StatelessWidget {
  const sellerOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
//getting an instance of our onBoardingcontroller. The put below creates a new instance of the controller so no need to put new again
    final controller = Get.put(sellerOnBoardingController());

    return Scaffold(
        body: Stack(children: [
      //to create horizontal scrollable pages, use PageView
      PageView(
          //passing in pageController already defined in onboarding_controller.dart to know which page is currently visible and how many pages we have.
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndator,
          children: const [
            sellerOnBoardingPage(
                image: AImages.sellerOnBoardingImage1,
                title: ATexts.sellerOnBoardingTitle1,
                subTitle: ATexts.sellerOnBoardingSubTitle1),
            sellerOnBoardingPage(
                image: AImages.onBoardingImage2,
                title: ATexts.sellerOnBoardingTitle2,
                subTitle: ATexts.sellerOnBoardingSubTitle2),
            sellerOnBoardingPage(
                image: AImages.onBoardingImage3,
                title: ATexts.sellerOnBoardingTitle3,
                subTitle: ATexts.sellerOnBoardingSubTitle3)
          ]),

      //skip button
      const sellerSkipButton(),

      //dot navigation smoothpageindicator
      const sellerOnBoardingDotNavigation(),

      //circular button
      const sellerOnBoardingNextButton(),
    ]));
  }
}