// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/login_signup/aAppName.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';

class signup_title extends StatelessWidget {
  const signup_title({
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
