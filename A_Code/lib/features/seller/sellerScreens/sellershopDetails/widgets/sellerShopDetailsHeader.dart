// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/appBar/appBar.dart';
import 'package:aproject/common/widgets/custom_shapes/curved_edges/curvedEdgeWidget.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class sellerShopDetailsHeader extends StatelessWidget {
  const sellerShopDetailsHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return ACustomCurvedEdgeWidget(
      child: Container(
          color: dark ? AColors.darkerGrey : AColors.grey.withOpacity(0.5),
          child: Stack(children: [
            //image
            const SizedBox(
                height: 300,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, ASizes.productImageRadius * 5, 0, 5.0),
                    child: Center(
                      child: Image(image: AssetImage(AImages.cabbage)),
                    ))),

            //appbar
            AAppBar(
                showBackArrow: true,
                leading: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.arrow_back),
                    color: dark ? AColors.white : AColors.black),
                actions: const [])
          ])),
    );
  }
}
