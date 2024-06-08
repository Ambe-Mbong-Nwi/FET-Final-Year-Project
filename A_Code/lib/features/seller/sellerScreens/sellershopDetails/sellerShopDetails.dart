// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/appBar/tabBar.dart';
import 'package:aproject/features/seller/sellerScreens/sellershopDetails/widgets/sellerMyOtherShopsTabInfo.dart';
import 'package:aproject/features/seller/sellerScreens/sellershopDetails/widgets/sellerShopDetailsHeader.dart';
import 'package:aproject/features/seller/sellerScreens/sellershopDetails/widgets/sellerShopDetailsTabInfo.dart';
import 'package:aproject/features/seller/sellerScreens/sellershopDetails/widgets/sellerShopProductsTabInfo.dart';
import 'package:aproject/features/seller/sellerScreens/sellershopDetails/widgets/sellerShopPromotionsTabInfo.dart';
import 'package:aproject/features/shop/screens/Ratings/shopRatings.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class sellerShopDetails extends StatelessWidget {
  const sellerShopDetails({super.key});

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
                  expandedHeight: 310,

                  //to put widget in this appbar use flexiblespace.
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: sellerShopDetailsHeader(dark: dark),
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
                sellerShopDetailsTabInfo(),
                sellerShopProductsTabInfo(),
                sellerShopPromotionsTabInfo(),
                shopRating(),
                sellerMyOtherShopsTabInfo(),
              ],
            )),

        //header
        // productDetailsHeader(dark: dark)
      ),
    );
  }
}
