//designed the page layout in onboarding.dart, and used onboarding_controller class for all the controls.

// ignore_for_file: camel_case_types, file_names

import 'package:aproject/features/seller/sellerAuthentication/sellerAscreens/sellerLogin/sellerLogin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class sellerOnBoardingController extends GetxController {
  static sellerOnBoardingController get instance =>
      Get.find(); //the instance var here simply calls Get.find()

//variables
  final pageController = PageController();
  var currentPageIndex = 0.obs;
  //obs changes design without using stateful widgets uses Rx instead.

  //when page scrolls, take index from onboarding.dart via the controller and update here.
  void updatePageIndator(index) => currentPageIndex.value = index;

  //ie update present page index value to that updated according to the click and jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index; //KEEPS STATE
    pageController.jumpTo(index); //JUMPS PAGE
  }

  //if at last screen, go to login screen. Else
  //update current index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(
          const sellerLoginScreen()); //remove alll prev screens then go to login
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //just 3 screens 0,1,2 => update current index and jump to the last page = 2
  void skipPage() {
    currentPageIndex.value = 2; //KEEPS STATE
    pageController.jumpToPage(2); //JUMPS PAGE
  }
}
