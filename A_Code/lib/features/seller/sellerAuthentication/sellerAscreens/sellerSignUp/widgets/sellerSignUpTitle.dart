// ignore_for_file: camel_case_types, file_names

import 'package:aproject/common/widgets/login_signup/aAppName.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';

class sellerSignup_title extends StatelessWidget {
  const sellerSignup_title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(ATexts.signupTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const aAppName(),
      ],
    );
  }
}
