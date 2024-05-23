// ignore_for_file: camel_case_types

import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class signup_form extends StatelessWidget {
  const signup_form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      //fullname
      TextFormField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.user), labelText: ATexts.fullname),
      ),
      const SizedBox(height: ASizes.spaceBteInputFields),

      //username
      TextFormField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.emoji_normal), labelText: ATexts.username),
      ),
      const SizedBox(height: ASizes.spaceBteInputFields),

      //email

      TextFormField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.direct), labelText: ATexts.email),
      ),
      const SizedBox(height: ASizes.spaceBteInputFields),

      //phone number

      TextFormField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.call), labelText: ATexts.pNumber),
      ),
      const SizedBox(height: ASizes.spaceBteInputFields),

      //password

      TextFormField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: ATexts.password,
            suffixIcon: Icon(Iconsax.eye_slash)),
      ),
      const SizedBox(height: ASizes.spaceBteInputFields),
    ]));
  }
}
