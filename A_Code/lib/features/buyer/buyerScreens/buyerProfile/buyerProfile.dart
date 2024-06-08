// ignore_for_file: file_names, camel_case_types

import 'package:aproject/features/buyer/buyerScreens/buyerProfile/widgets/buyerEmail.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerProfile/widgets/buyerInputData.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerProfile/widgets/buyerProfileHeader.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class buyerProfile extends StatelessWidget {
  const buyerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    //targetting if its the dark context, if true or false, store value in variable
    //final bool dark = AHelperFunctions.isDarkMode(context);

    return const Scaffold(

        //to use padding and customisation in appbar, create your custom own bcos using it directly here does not support all properties.
        body: SingleChildScrollView(
            child: Column(
      children: [
        ///HEADER
        buyerProfileHeader(),
        SizedBox(height: ASizes.defaultSpace),

        //name
        UserData(
            icon: Iconsax.user,
            label: 'Full Name',
            info: 'Ambe Mbong-Nwi',
            newInfoDemand: "Enter your Full Name"),

        Divider(height: 60.0, color: Color.fromARGB(255, 204, 203, 203)),

        //username
        UserData(
            icon: Iconsax.emoji_normal,
            label: 'Username',
            info: 'Abong',
            newInfoDemand: "Enter your Username"),

        Divider(height: 60.0, color: Color.fromARGB(255, 204, 203, 203)),

        //Email
        buyerEmail(),
        Divider(height: 60.0, color: Color.fromARGB(255, 204, 203, 203)),

        //phone number
        UserData(
          icon: Iconsax.call,
          label: 'Phone Number',
          info: '+237 681 89 18 68',
          newInfoDemand: "Enter your Phone Number",
        ),

        Divider(height: 60.0, color: Color.fromARGB(255, 204, 203, 203)),
      ],
    )));
  }
}
