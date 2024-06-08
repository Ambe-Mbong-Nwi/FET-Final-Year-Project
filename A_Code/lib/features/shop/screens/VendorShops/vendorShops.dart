// ignore_for_file: file_names

import 'package:aproject/common/widgets/layouts/gridLayout.dart';
import 'package:aproject/features/shop/screens/VendorShops/widgets/vendorShopCard.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

class VendorShops extends StatelessWidget {
  const VendorShops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          actions: const [],
          title: Text('Vendor Shops',
              style: Theme.of(context).textTheme.headlineMedium),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(ASizes.defaultSpace),
            child: Column(
              children: [
                AgridLayout(
                  itemCount: 12,
                  mainAxisExtent: 240,
                  itemBuilder: (_, index) => const vendorShopCard(),
                )
              ],
            )));
  }
}
