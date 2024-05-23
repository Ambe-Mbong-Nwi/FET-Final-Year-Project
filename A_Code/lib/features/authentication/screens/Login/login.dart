//all designs for the inputfields etc have been designed in the different theme files, and called in the theme.dark for both light and dark modes, so just use here
// ignore_for_file: camel_case_types

import 'package:aproject/common/spacing_styles.dart';
import 'package:aproject/common/login_signup/aAppName.dart';
import 'package:aproject/common/login_signup/aFormDivider.dart';
import 'package:aproject/features/authentication/screens/Login/widgets/aLoginForm.dart';
import 'package:aproject/features/authentication/screens/Login/widgets/aLoginHeader.dart';
import 'package:aproject/common/login_signup/aSocialButton.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //targetting if its the dark context, if true or false, store value in variable
    final dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
        body: SingleChildScrollView(
            //make it scrollable for small screens.
            child: Padding(
                padding: ASpacingStyle.paddingWithAppBarHeight,
                child: Column(
                  children: [
                    //title, and subtitle
                    const aLoginHeader(),

                    const SizedBox(height: ASizes.spaceBtwSections * 3),

                    //app name
                    const aAppName(),

                    //Form
                    aLoginForm(dark: dark),

                    //Divider
                    aFormDivider(
                      dark: dark,
                      dividertext: ATexts.orLogInWith.capitalize!,
                    ),
                    const SizedBox(height: ASizes.spaceBtwSections),

                    //footer
                    const aSocialButttons()
                  ],
                ))));
  }
}
