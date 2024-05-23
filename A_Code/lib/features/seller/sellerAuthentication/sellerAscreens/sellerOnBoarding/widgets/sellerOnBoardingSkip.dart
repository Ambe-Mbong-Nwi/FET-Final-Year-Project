// ignore_for_file: camel_case_types, file_names

import 'package:aproject/features/seller/sellerAuthentication/sellerControllersOnboarding/sellerOnBoardingController.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class sellerSkipButton extends StatelessWidget {
  const sellerSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ADeviceUtils.getAppBarHeight(),
      right: ASizes.defaultSpace,
      child: TextButton(
        onPressed: () => sellerOnBoardingController.instance.skipPage(),
        child: const Text(
          "Skip",
          style: TextStyle(
            color: AColors.handy,
            fontSize: ASizes.fontSizeLg,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


//skipPage func is defined in onboarding_controllr.dart file
//just getting an instance and not using Get.put here bcos it has already been done in onboarding.dart where this dot has been used.
