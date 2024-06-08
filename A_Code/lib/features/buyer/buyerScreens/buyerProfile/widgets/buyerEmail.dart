// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class buyerEmail extends StatelessWidget {
  const buyerEmail({
    super.key,
    // required this.emailController,
  });

  // final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Expanded(
          flex: 1,
          child: Icon(
            Iconsax.direct,
            color: Colors.grey,
          ),
        ),
        //SizedBox(width: 20.0),

        Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                'ambembongnwi@gmail.com',
                style: Theme.of(context).textTheme.headlineSmall,
              )
            ],
          ),
        ),
        //  SizedBox(width: 170),
      ],
    );
  }
}
