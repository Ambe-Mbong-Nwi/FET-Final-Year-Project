// ignore_for_file: camel_case_types, file_names

import 'package:aproject/common/widgets/login_signup/aFormDivider.dart';
import 'package:aproject/common/widgets/login_signup/aSocialButton.dart';
import 'package:aproject/features/seller/sellerAuthentication/sellerAscreens/sellerSignUp/sellerVerifyEmail.dart';
import 'package:aproject/features/seller/sellerAuthentication/sellerAscreens/sellerSignUp/widgets/sellerSignUpForm.dart';
import 'package:aproject/features/seller/sellerAuthentication/sellerAscreens/sellerSignUp/widgets/sellerSignUpTitle.dart';
import 'package:aproject/features/seller/sellerAuthentication/sellerAscreens/sellerSignUp/widgets/sellerTermsAndConditions.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class sellersignupScreen extends StatelessWidget {
  const sellersignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //targetting if its the dark context, if true or false, store value in variable
    final dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
        appBar: AppBar(), //for back arrow by default.
        body: SingleChildScrollView(
            child: Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.all(ASizes.defaultSpace),
                child: Column(
                  children: [
                    //title
                    const sellerSignup_title(),
                    const SizedBox(
                      height: ASizes.spaceBtwSections,
                    ),

                    //form
                    const sellerSignup_form(),

                    //terms and conditions
                    sellerterms_and_conditions(dark: dark),
                    const SizedBox(height: ASizes.spaceBtwSections),

                    //signupbutton
                    //sign in button. wrap with sizedbox so u can give infinity width of stretching the screen size.
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            // ignore: prefer_const_constructors
                            onPressed: () =>
                                Get.to(() => const sellerVerifyEmailScreen()),
                            child: const Text(ATexts.signup))),
                    const SizedBox(height: ASizes.spaceBtwItems),

                    //Divider
                    aFormDivider(
                      dark: dark,
                      dividertext: ATexts.orSignUpWith.capitalize!,
                    ),
                    const SizedBox(height: ASizes.spaceBtwSections),

                    //footer
                    const aSocialButttons()
                  ],
                ))));
  }
}
