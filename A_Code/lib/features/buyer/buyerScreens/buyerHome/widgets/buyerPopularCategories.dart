// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/image_text_widgets/AVerticalImageText.dart';
import 'package:aproject/common/widgets/texts/ASectionHeading.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

class buyerPopularCategories extends StatelessWidget {
  const buyerPopularCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: ASizes.defaultSpace),
        child: Column(
          children: [
            const ASectionHeading(
              title: 'Popular Categories',
              textcolor: AColors.white,
              showButton: false,
            ),
            const SizedBox(height: ASizes.spaceBtwItems),

            //categories
            //use listview for horizontal scrolling. used dynamic method(.builder) here getting categories from local storage
            //wrap Listview with sizedbox bcos it has a very great height. sizedbox limits the height to what we want.
            //don't forget to return the child widget, AVerticalImageTex

            SizedBox(
              height: 80,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal, //horizontal_scroll
                itemBuilder: (_, index) {
                  return AVerticalImageText(
                    image: AImages.phone,
                    title: 'Electronics',
                    onTap: () {},
                  );
                },
              ),
            )
          ],
        ));
  }
}
