// ignore_for_file: file_names

import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class AAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false, //default value
      //this.leadingIcon,
      this.leading,
      this.actions,
      this.leadingOnPressed});

  //to make widget reusable, use properties instead with ? meaning optional. No required keyword above.
  final Widget? title;
  final bool showBackArrow;
  //final IconData? leadingIcon;
  final Widget? leading; //for the drawer nav
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ASizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: leading,
        // leading: showBackArrow
        //     ? IconButton(
        //         onPressed: () => Get.back(),
        //         icon: const Icon(Iconsax.direct_left))
        //     : IconButton(
        //         onPressed: leadingOnPressed, icon: Icon(leadingIcon)),
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(ADeviceUtils.getAppBarHeight());
}


//if use wants to showBackArrow, show it else pass in their func and icon there