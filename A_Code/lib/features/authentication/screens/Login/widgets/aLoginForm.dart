import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class aLoginForm extends StatelessWidget {
  const aLoginForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwSections),
      child: Column(
        children: [
          //Email
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: ATexts.email),
          ),
          const SizedBox(height: ASizes.spaceBteInputFields),
          //password
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: ATexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: ASizes.spaceBteInputFields / 2),

          //remember me and forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //remeber me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(ATexts.rememberMe),
                ],
              ),
              //forgetpassword
              TextButton(
                  onPressed: () {},
                  child: Text(ATexts.forgotPassword,
                      style: TextStyle(
                        color: dark ? AColors.light : AColors.dark,
                        fontSize: ASizes.fontSizeMd,
                      )))
            ],
          ),
          const SizedBox(height: ASizes.spaceBtwSections),

          //sign in button. wrap with sizedbox so u can give infinity width of stretching the screen size.
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(ATexts.login))),
          const SizedBox(height: ASizes.spaceBtwItems),

          //create account button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {}, child: const Text(ATexts.createAccount))),
        ],
      ),
    ));
  }
}
