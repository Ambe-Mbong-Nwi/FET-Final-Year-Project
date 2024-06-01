// ignore_for_file: file_names, camel_case_types

import 'package:aproject/features/buyer/buyerScreens/buyerCustomerSupport/buyerFeedback.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

class buyerCustomerSupport extends StatefulWidget {
  const buyerCustomerSupport({super.key});

  @override
  State<buyerCustomerSupport> createState() => _CustomerSupportState();
}

class _CustomerSupportState extends State<buyerCustomerSupport> {
//creating individual variables and methods for each so they are controlled individually.

  bool isReadMore1 =
      false; //boolean is initially false, so just a single line is displayed with its corresponding dropdown icon
  bool isReadMore2 = false;
  bool isReadMore3 = false;
  bool isReadMore4 = false;

  Widget buildText1(String text) {
    //when you click on icon, this func is ran to control the text displayed.
    final maxLines = isReadMore1
        ? null
        : 1; //if isReadmore true, show all text, else maximum number of lines is 1.

    return Text(
      text,
      maxLines: maxLines,
    );
  }

  Widget buildText2(String text) {
    //when you click on icon, this func is ran to control the text displayed.
    final maxLines = isReadMore2
        ? null
        : 1; //if isReadmore true, show all text, else maximum number of lines is 1.

    return Text(
      text,
      maxLines: maxLines,
    );
  }

  Widget buildText3(String text) {
    //when you click on icon, this func is ran to control the text displayed.
    final maxLines = isReadMore3
        ? null
        : 1; //if isReadmore true, show all text, else maximum number of lines is 1.

    return Text(
      text,
      maxLines: maxLines,
    );
  }

  Widget buildText4(String text) {
    //when you click on icon, this func is ran to control the text displayed.
    final maxLines = isReadMore4
        ? null
        : 1; //if isReadmore true, show all text, else maximum number of lines is 1.

    return Text(
      text,
      maxLines: maxLines,
    );
  }

  @override
  Widget build(BuildContext context) {
    //targetting if its the dark context, if true or false, store value in variable
    final dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: dark ? Colors.white : Colors.black,
        ),
        body: ListView(
          //listview is better than scrollview bcos it provides optimisation when handling large datasets.
          padding: const EdgeInsets.all(20),
          children: [
            //help question
            Text(ATexts.csHelp,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 40.0),

            //support image
            const Image(
              image: AssetImage(AImages.support),
              height: 190.0,
              //width: 160.0,
            ),
            const SizedBox(height: 20.0),

            //next page button
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const buyerFeedbackPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    elevation: 3.0,
                    backgroundColor: dark ? AColors.dark : Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 22),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ATexts.csLvMsg,
                        style: Theme.of(context).textTheme.headlineSmall),
                    const Icon(
                      Icons.arrow_circle_right_sharp,
                      color: AColors.primary,
                      size: ASizes.iconLg,
                    ),
                  ],
                )),
            const SizedBox(height: 30.0),

            //FAQ Intro
            Text(ATexts.csFAQ,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20.0),

            //FAQ questions
            Column(
              children: [
                //FAQ1
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isReadMore1 = !isReadMore1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: dark ? AColors.dark : Colors.white,
                        foregroundColor: dark ? Colors.white : Colors.black,
                        elevation: 3.0, //height of buttons shadow.
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                    child: Row(
                      children: [
                        Flexible(
                          child: buildText1('${ATexts.csQ1}\n\n${ATexts.csA1}'),
                        ),
                        Icon(isReadMore1
                            ? Icons.keyboard_arrow_up_sharp
                            : Icons
                                .keyboard_arrow_down_sharp), //icon changes depending on the boolean value of isReadMore
                      ],
                    )),
                const SizedBox(height: 20.0),

                //FAQ2
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isReadMore2 = !isReadMore2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: dark ? AColors.dark : Colors.white,
                        foregroundColor: dark ? Colors.white : Colors.black,
                        elevation: 3.0, //height of buttons shadow.
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                    child: Row(
                      children: [
                        Flexible(
                          child: buildText2('${ATexts.csQ2}\n\n${ATexts.csA2}'),
                        ),
                        Icon(isReadMore2
                            ? Icons.keyboard_arrow_up_sharp
                            : Icons
                                .keyboard_arrow_down_sharp), //icon changes depending on the boolean value of isReadMore
                      ],
                    )),
                const SizedBox(height: 20.0),

                //FAQ3
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isReadMore3 = !isReadMore3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: dark ? AColors.dark : Colors.white,
                        foregroundColor: dark ? Colors.white : Colors.black,
                        elevation: 3.0, //height of buttons shadow.
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: buildText3('${ATexts.csQ3}\n\n${ATexts.csA3}'),
                        ),
                        Icon(isReadMore3
                            ? Icons.keyboard_arrow_up_sharp
                            : Icons
                                .keyboard_arrow_down_sharp), //icon changes depending on the boolean value of isReadMore
                      ],
                    )),
                const SizedBox(height: 20.0),

                //FAQ4
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isReadMore4 = !isReadMore4;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: dark ? AColors.dark : Colors.white,
                        foregroundColor: dark ? Colors.white : Colors.black,
                        elevation: 3.0, //height of buttons shadow.
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                    child: Row(
                      children: [
                        Flexible(
                          child: buildText4('${ATexts.csQ4}\n\n${ATexts.csA4}'),
                        ),
                        Icon(isReadMore4
                            ? Icons.keyboard_arrow_up_sharp
                            : Icons
                                .keyboard_arrow_down_sharp), //icon changes depending on the boolean value of isReadMore
                      ],
                    )),
              ],
            ),
          ],
        ));
  }
}
