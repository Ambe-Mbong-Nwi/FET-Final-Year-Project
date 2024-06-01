// ignore_for_file: file_names, camel_case_types

import 'package:aproject/features/buyer/buyerScreens/buyerCustomerSupport/widgets/feedbackInputs.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerCustomerSupport/widgets/feedbackOurContact.dart';
import 'package:flutter/material.dart';

class buyerFeedbackPage extends StatelessWidget {
  const buyerFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
//targetting if its the dark context, if true or false, store value in variable
    //final dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          //so keyboard doesnt push content out of the page.
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //head with out contact
                const feedbackOurContact(),

                //user feedback
                const feedbackInputs(),

                //send button
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Send'))),
              ],
            ),
          ),
        ));
  }
}
