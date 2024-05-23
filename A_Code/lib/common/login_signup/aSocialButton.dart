import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

class aSocialButttons extends StatelessWidget {
  const aSocialButttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //google icon
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: AColors.grey),
                borderRadius: BorderRadius.circular(100)),
            child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: ASizes.iconMd,
                  height: ASizes.iconMd,
                  image: AssetImage(AImages.google)),
            )),
        const SizedBox(width: ASizes.spaceBtwItems),
        //facebook icon
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: AColors.grey),
                borderRadius: BorderRadius.circular(100)),
            child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: ASizes.iconLg,
                  height: ASizes.iconLg,
                  image: AssetImage(AImages.facebook)),
            )),
      ],
    );
  }
}
