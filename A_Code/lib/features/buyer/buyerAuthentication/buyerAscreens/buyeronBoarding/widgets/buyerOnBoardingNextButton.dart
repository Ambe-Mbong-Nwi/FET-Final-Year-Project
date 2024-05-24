// ignore_for_file: camel_case_types, file_names

import 'package:aproject/features/buyer/buyerAuthentication/buyerControllersOnboarding/buyerOnBoardingController.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: ASizes.defaultSpace,
      bottom: ADeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: AColors.handy),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}


//just getting an instance of onBoardingController and not using Get.put here bcos it has already been done in onboarding.dart where this dot has been used.
    