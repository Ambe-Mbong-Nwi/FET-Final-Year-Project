import 'package:aproject/common/login_signup/aAppName.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';

class signupScreen extends StatelessWidget {
  const signupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(), //for back arrow by default.
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(ASizes.defaultSpace),
                child: Column(
                  children: [
                    //title
                    Row(
                      children: [
                        Text(ATexts.signupTitle,
                            style: Theme.of(context).textTheme.headlineMedium),
                        const aAppName(),
                      ],
                    )
                  ],
                ))));
  }
}
