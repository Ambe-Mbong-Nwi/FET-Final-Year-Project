// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/login_signup/aFormDivider.dart';
import 'package:aproject/common/widgets/login_signup/aSocialButton.dart';
import 'package:aproject/features/buyer/buyerAuthentication/buyerAscreens/buyerSignUp/verifyEmail.dart';
import 'package:aproject/features/buyer/buyerAuthentication/buyerAscreens/buyerSignUp/widgets/signUpForm.dart';
import 'package:aproject/features/buyer/buyerAuthentication/buyerAscreens/buyerSignUp/widgets/signUpTitle.dart';
import 'package:aproject/features/buyer/buyerAuthentication/buyerAscreens/buyerSignUp/widgets/termsAndConditions.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signupScreen extends StatelessWidget {
  const signupScreen({super.key});

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
                    const signup_title(),
                    const SizedBox(
                      height: ASizes.spaceBtwSections,
                    ),

                    //form
                    const signup_form(),

                    //terms and conditions
                    terms_and_conditions(dark: dark),
                    const SizedBox(height: ASizes.spaceBtwSections),

                    //signupbutton
                    //sign in button. wrap with sizedbox so u can give infinity width of stretching the screen size.
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () =>
                                Get.to(() => const verifyEmailScreen()),
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
