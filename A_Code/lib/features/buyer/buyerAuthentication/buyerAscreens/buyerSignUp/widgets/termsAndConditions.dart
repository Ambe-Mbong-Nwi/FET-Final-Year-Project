import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';

class terms_and_conditions extends StatelessWidget {
  const terms_and_conditions({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: ASizes.spaceBtwItems),
        //use rich so you can use diff texts on one line via spans
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${ATexts.agreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${ATexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? AColors.primary : AColors.secondary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? AColors.primary : AColors.secondary,
                  )),
          TextSpan(
              text: '${ATexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${ATexts.termsOfUse} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? AColors.primary : AColors.secondary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? AColors.primary : AColors.secondary,
                  )),
        ]))
      ],
    );
  }
}
