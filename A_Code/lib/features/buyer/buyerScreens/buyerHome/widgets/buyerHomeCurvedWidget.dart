// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/custom_shapes/containers/circularContainer.dart';
import 'package:aproject/common/widgets/custom_shapes/curved_edges/curvedEdgeWidget.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:flutter/material.dart';

class buyerHomeCustomCurvedEdgeWidget extends StatelessWidget {
  const buyerHomeCustomCurvedEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ACustomCurvedEdgeWidget(
      child: Container(
          color: AColors.primary,
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: [
              //circular containers: custom shapes
              Positioned(
                top: -150,
                right: -250,
                child: ACircularContainer(
                  backgroundColor: AColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: ACircularContainer(
                  backgroundColor: AColors.white.withOpacity(0.1),
                ),
              ),
              child, //
            ],
          )),
    );
  }
}
