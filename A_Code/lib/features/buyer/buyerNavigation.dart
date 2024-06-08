// ignore_for_file: file_names, camel_case_types

//avoid using stateful classes by using getx method on navigation.
//it avoids redrawing and slowing speed of app when changing nav tabs.

import 'package:aproject/features/buyer/buyerScreens/buyerHome/buyerHome.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerMessaging/buyerMessagingScreen.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerPayment/buyerPayment.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerPromotion/buyerPromotionScreen.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

// class buyerNavigation extends StatefulWidget {
//   const buyerNavigation({super.key});

//   @override
//   State<buyerNavigation> createState() => _buyerNavigationState();
// }

// class _buyerNavigationState extends State<buyerNavigation> {
//   int index = 0;

//
class buyerNavigation extends StatelessWidget {
  const buyerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);

    //creating instance of nav controller
    final controller = Get.put(NavigationController());

//to redraw screen when selected index changes, wrap navBar and body with obx and create funcs calling nav bar and body
    return Scaffold(
      bottomNavigationBar: Obx(
        //observer
        () => NavigationBar(
          elevation: 0,
          height: 80,
          selectedIndex: controller
              .selectedIndex.value, //get int value of page from Rx type
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? AColors.dark : Colors.white,
          indicatorColor: darkMode
              ? AColors.white.withOpacity(0.1)
              : AColors.dark.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
            NavigationDestination(icon: Icon(Icons.alarm), label: 'Promotion'),
            NavigationDestination(
                icon: Icon(Iconsax.message), label: 'Message'),
            NavigationDestination(icon: Icon(Iconsax.money), label: 'Payment'),
          ],
        ),
      ),

//to redraw screen when selected index changes, wrap navBar and body with obx and create funcs calling nav bar and body
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
//observer variable, of Rx type. To get int value above, use controller.selectedIndex.value
  final Rx<int> selectedIndex = 0.obs; //what is observed

  final screens = [
    const buyerHome(),
    const buyerPromotionScreen(),
    const buyerMessagingScreen(),
    const buyerPayment(),
  ];
}
