// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/appBar/appBar.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerHome/widgets/buyerHomeCurvedWidget.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class buyerProfileHeader extends StatelessWidget {
  const buyerProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return buyerHomeCustomCurvedEdgeWidget(
        child: Column(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: AAppBar(
            showBackArrow: true,
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back),
              color: AColors.white,
            ),
          ),
        ),

        //picture and camera
        Padding(
          padding: const EdgeInsets.fromLTRB(
              ASizes.defaultSpace * 3,
              ASizes.defaultSpace,
              ASizes.defaultSpace * 3,
              ASizes.defaultSpace * 3),
          child: Center(
            child: Column(
              children: [
                Stack(
                  //Use stack so profile and camera can be placed on each other
                  children: [
                    const CircleAvatar(
                      backgroundColor: AColors.dark,
                      //backgroundImage: AssetImage("assets/images/ambe.jpg"),
                      radius: 60.0,
                      //child: Icon(),
                    ),
                    Positioned(
                      //placing the camara on profile.
                      right: 1,
                      top: 70,
                      child: Container(
                        //container surrounding the icon.
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xffb80f0a),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt_rounded),
                          iconSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    //appbar
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
