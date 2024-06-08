// ignore_for_file: file_names, camel_case_types

import 'package:aproject/features/buyer/buyerAuthentication/buyerAscreens/buyerLogin/buyerlogin.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerAbout/buyerAbout.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerCustomerSupport/buyerCustomerSupport.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerNotification/buyerNotification.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerProfile/buyerProfile.dart';
import 'package:aproject/features/shop/screens/VendorShops/vendorShops.dart';
import 'package:aproject/features/shop/screens/wishlist/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class buyerDrawerNavigation extends StatelessWidget {
  const buyerDrawerNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero, //remove default padding from listview
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffF1A183),
              ),
              child: Center(
                child: Text('Ambe',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),

            //wishlist
            ListTile(
              leading: const Icon(Iconsax
                  .heart), //used to place icon before title. trailing places icon at the far right
              title: const Text('Wishlist'),
              onTap: () {
                Navigator.pop(
                    context); //so it closes drawer navigation before moving to the clicked page.

                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const wishListScreen()));
              },
            ),

            //divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                  height: 20.0, color: Color.fromARGB(255, 204, 203, 203)),
            ),

            //wishlist
            ListTile(
              leading: const Icon(Iconsax
                  .shop), //used to place icon before title. trailing places icon at the far right
              title: const Text('Vendor Shops'),
              onTap: () {
                Navigator.pop(
                    context); //so it closes drawer navigation before moving to the clicked page.

                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const VendorShops()));
              },
            ),

            //divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                  height: 20.0, color: Color.fromARGB(255, 204, 203, 203)),
            ),

            //profile
            ListTile(
              leading: const Icon(Icons
                  .person), //used to place icon before title. trailing places icon at the far right
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(
                    context); //so it closes drawer navigation before moving to the clicked page.

                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const buyerProfile()));
              },
            ),

            //divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                  height: 20.0, color: Color.fromARGB(255, 204, 203, 203)),
            ),

            //Notifications
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.pop(
                    context); //so it closes drawer navigation before moving to the clicked page.

                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const buyerNotification()));
              },
            ),

            //divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                  height: 20.0, color: Color.fromARGB(255, 204, 203, 203)),
            ),

            //support
            ListTile(
              leading: const Icon(Icons.support_agent),
              title: const Text('Support'),
              onTap: () {
                Navigator.pop(
                    context); //so it closes drawer navigation before moving to the clicked page.

                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const buyerCustomerSupport()));
              },
            ),

            //divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                  height: 20.0, color: Color.fromARGB(255, 204, 203, 203)),
            ),

            //About
            ListTile(
              leading: const Icon(Icons.info_outlined),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(
                    context); //so it closes drawer navigation before moving to the clicked page.

                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const buyerAbout()));
              },
            ),

            //divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                  height: 20.0, color: Color.fromARGB(255, 204, 203, 203)),
            ),

            //Logout
            ListTile(
              iconColor: const Color(0xffb80f0a),
              leading: const Icon(Icons.logout_rounded),
              title: const Text('Logout',
                  style: TextStyle(
                    color: Color(0xffb80f0a),
                  )),
              onTap: () {
                ///logout by replacing the present page with the login page.
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
            ),
          ],
        ));
  }
}
