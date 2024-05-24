// ignore_for_file: file_names

import 'package:aproject/common/widgets/custom_shapes/containers/searchContainer.dart';
import 'package:aproject/common/widgets/texts/ASectionHeading.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerHome/widgets/buyerDrawerNavidation.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerHome/widgets/buyerHomeAppBar.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerHome/widgets/buyerHomeCurvedWidget.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class buyerHome extends StatelessWidget {
  const buyerHome({super.key});

  @override
  Widget build(BuildContext context) {
    //targetting if its the dark context, if true or false, store value in variable
    //final bool dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
        //drawer navigation
        drawer: const buyerDrawerNavigation(),

        //to use padding and customisation in appbar, create your custom own bcos using it directly here does not support all properties.
        body: SingleChildScrollView(
            child: Column(
          children: [
            ///HEADER
            buyerHomeCustomCurvedEdgeWidget(
                child: Column(
              children: [
                //custom appbar defined which has property values inputed here for reusability
                const buyerHomeAppBar(),
                const SizedBox(height: ASizes.spaceBtwSections),

                //search bar
                const ASearchContainer(text: 'Search for Products'),
                const SizedBox(height: ASizes.spaceBtwSections),

                //categories
                const Padding(
                    padding: EdgeInsets.only(left: ASizes.defaultSpace),
                    child: Column(
                      children: [
                        ASectionHeading(
                          title: 'Popular Categories',
                          showButton: false,
                        ),
                        SizedBox(height: ASizes.spaceBtwItems),

                        //
                      ],
                    )),

                Container(height: 50, color: Colors.black)
              ],
            )),
          ],
        )));
  }
}
