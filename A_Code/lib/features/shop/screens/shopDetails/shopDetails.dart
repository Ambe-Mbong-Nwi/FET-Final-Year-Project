// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/appBar/tabBar.dart';
import 'package:aproject/features/shop/screens/Ratings/shopRatings.dart';
import 'package:aproject/features/shop/screens/productDetails/widgets/productDetailsHeader.dart';
import 'package:aproject/features/shop/screens/productDetails/widgets/shopDetailsTabInfo.dart';
import 'package:aproject/features/shop/screens/shopDetails/widgets/myOtherShopsTabInfo.dart';
import 'package:aproject/features/shop/screens/shopDetails/widgets/shopProductsTabInfo.dart';
import 'package:aproject/features/shop/screens/shopDetails/widgets/shopPromotionsTabInfo.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class shopDetails extends StatelessWidget {
  const shopDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = AHelperFunctions.isDarkMode(context);

//wrap scaffold with this bcos of horizontal scroll tabs below
    return DefaultTabController(
      length: 5, //# of horizontal tabs
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
                    Tab(child: Text('Shop Details')),
                    Tab(child: Text('Shop Products')),
                    Tab(child: Text('Shop Promotions')),
                    Tab(child: Text('Shop Ratings')),
                    Tab(child: Text('My Other Shops')),
                  ]),
                ),
              ];
            },

            //scrollable tabs content
            body: const TabBarView(
              children: [
                shopDetailsTabInfo(),
                shopProductsTabInfo(),
                shopPromotionsTabInfo(),
                shopRating(),
                myOtherShopsTabInfo(),
              ],
            )),

        //header
        // productDetailsHeader(dark: dark)
      ),
    );
  }
}
