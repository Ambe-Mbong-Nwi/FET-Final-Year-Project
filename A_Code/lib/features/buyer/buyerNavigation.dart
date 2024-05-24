// ignore_for_file: file_names, camel_case_types

import 'package:aproject/features/buyer/buyerScreens/buyerHome/buyerHome.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class buyerNavigation extends StatelessWidget {
  const buyerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    //creating a new instance of the navigation controller.
    final controller = Get.put(buyerNavigationController());
    final darkMode = AHelperFunctions.isDarkMode(context);

//wrap all with Obx(observer). It detects the obs(observed) value inside and changes selected navigation icon.
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          height: 80,
          selectedIndex: controller.selectedIndex.value, //get int value of page
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? AColors.dark : Colors.white,
          indicatorColor: darkMode
              ? AColors.white.withOpacity(0.1)
              : AColors.dark.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
            NavigationDestination(
                icon: Icon(Iconsax.message), label: 'Message'),
            NavigationDestination(icon: Icon(Iconsax.money), label: 'Payment'),
            NavigationDestination(
                icon: Icon(Iconsax.support), label: 'Support'),
          ],
        ),
      ),

//wrap all with Obx(observer). It detects the obs(observed) value inside and changes selected navigation icon.
      //get selected index value, match it to its respective screen, so the contoller changes to that screen
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class buyerNavigationController extends GetxController {
  //storing index of selected screen destination. 0 is the initally selected ie home screen
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const buyerHome(),
    Container(color: Colors.brown),
    Container(color: Colors.blue),
    Container(color: Colors.yellow)
  ];
}
