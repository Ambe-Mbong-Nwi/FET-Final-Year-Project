// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/appBar/appBar.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class buyerHomeAppBar extends StatelessWidget {
  const buyerHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AAppBar(
        ////drawer icon
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Iconsax.menu5,
                  size: ASizes.lg * 1.5, color: AColors.white),
              onPressed: () => Scaffold.of(context).openDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),

        //appbar title
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(ATexts.buyerAppBarTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: AColors.grey)),
            const SizedBox(
              width: ASizes.sm,
            ),
            Text(ATexts.buyerAppBarSubTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: AColors.grey)),
          ],
        ));
  }
}
