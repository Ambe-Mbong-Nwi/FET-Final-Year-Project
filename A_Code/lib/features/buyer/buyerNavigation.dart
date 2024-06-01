// ignore_for_file: file_names, camel_case_types

import 'package:aproject/features/buyer/buyerScreens/buyerHome/buyerHome.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerMessaging/buyerMessagingScreen.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerPromotion/buyerPromotionScreen.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class buyerNavigation extends StatefulWidget {
  const buyerNavigation({super.key});

  @override
  State<buyerNavigation> createState() => _buyerNavigationState();
}

class _buyerNavigationState extends State<buyerNavigation> {
  int index = 0;

  final screens = [
    const buyerHome(),
    const buyerPromotionScreen(),
    const buyerMessagingScreen(),
    Container(color: Colors.yellow)
  ];

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        elevation: 0,
        height: 80,
        selectedIndex: index, //get int value of page
        onDestinationSelected: (index) => setState(() => this.index = index),
        backgroundColor: darkMode ? AColors.dark : Colors.white,
        indicatorColor: darkMode
            ? AColors.white.withOpacity(0.1)
            : AColors.dark.withOpacity(0.1),
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.alarm), label: 'Promotion'),
          NavigationDestination(icon: Icon(Iconsax.message), label: 'Message'),
          NavigationDestination(icon: Icon(Iconsax.money), label: 'Payment'),
        ],
      ),
      body: screens[index],
    );
  }
}
