// ignore_for_file: file_names

import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AVerticalImageText extends StatelessWidget {
  const AVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AColors.white, //default
    this.backgroundColor = AColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    //wrap child(column) in listview with padding to give space btwm listview items
    //GestureDetector monitors any activity or tapping on item and performs func accordingly
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ASizes.spaceBtwItems),
        child: Column(
          children: [
            //circular container
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(ASizes.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: backgroundColor ?? (dark ? AColors.dark : AColors.white),
              ),
              child: Center(
                //image child (circular icon) for circular container
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  // color: dark ? AColors.light : AColors.dark,
                ),
              ),
            ),
            //text label for above icon
            //wrap text widget with sizedbox so long lables dont exceed space. pass maxline and overflow properties to control overflow.
            const SizedBox(height: ASizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: AColors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
