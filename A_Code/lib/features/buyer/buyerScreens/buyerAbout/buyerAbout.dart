// ignore_for_file: file_names, camel_case_types

import 'package:aproject/utils/constraints/colors.dart';
import 'package:flutter/material.dart';

class buyerAbout extends StatelessWidget {
  const buyerAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AColors.primary,
          foregroundColor: Colors.white,
          title: Text('About Us',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.apply(color: Colors.white)),
          centerTitle: true,
        ),
        body: const SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(15.0),
        )));
  }
}