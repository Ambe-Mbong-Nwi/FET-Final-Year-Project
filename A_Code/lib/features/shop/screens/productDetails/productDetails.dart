// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/appBar/tabBar.dart';
import 'package:aproject/features/shop/screens/Ratings/shopRatings.dart';
import 'package:aproject/features/shop/screens/productDetails/widgets/productDetailsHeader.dart';
import 'package:aproject/features/shop/screens/productDetails/widgets/productDetailsTabInfo.dart';
import 'package:aproject/features/shop/screens/productDetails/widgets/shopDetailsTabInfo.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class productDetails extends StatelessWidget {
  const productDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = AHelperFunctions.isDarkMode(context);

//wrap scaffold with this bcos of horizontal scroll tabs below
    return DefaultTabController(
      length: 3, //# of horizontal tabs
      child: Scaffold(
        //to use nested scroll, vertical and horizontal views below, use nestedscrollview on the body
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrollable) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false, //remove back arrow
                  pinned: true,
                  floating: true,
                  backgroundColor: Colors.transparent,
                  expandedHeight: 330,

                  //to put widget in this appbar use flexiblespace.
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: productDetailsHeader(dark: dark),
                  ),

                  //horizontal scrollable tabs
                  bottom: ATabBar(dark: dark, tabs: const [
                    Tab(child: Text('Product Details')),
                    Tab(child: Text('Shop Details')),
                    Tab(child: Text('Shop Ratings')),
                  ]),
                ),
              ];
            },

            //scrollable tabs content
            body: const TabBarView(
              children: [
                //first child for first page, Product Details.
                productDetailsTabInfo(),
                shopDetailsTabInfo(),
                shopRating(),
              ],
            )),

        //header
        // productDetailsHeader(dark: dark)
      ),
    );
  }
}
