import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AHelperFunctions {
  static Color? getColor(String value) {
    //all my product specific coloers are defined here.

    if (value == 'Apricot1') {
      return const Color(0xFFF1A183);
    } else if (value == "Jafa2") {
      return const Color(0xFFED884C);
    } else if (value == "Pomegranate3") {
      return const Color(0xFFE64F25);
    } else if (value == "WellRead4") {
      return const Color(0xFFBD2630);
    } else if (value == "OldBrick5") {
      return const Color(0xFF991B27);
    } else if (value == "dark1") {
      return const Color(0xFF242631);
    } else if (value == "dark2") {
      return const Color(0xFF14142B);
    } else if (value == "white") {
      return const Color(0xFFFFFFFF);
    } else if (value == "LightGrey") {
      return const Color(0xFFF7F7FC);
    } else if (value == "CreamWhite") {
      return const Color(0xFFFEFEFE);
    } else if (value == "Black") {
      return Colors.black;
    } else if (value == "Grey") {
      return Colors.grey;
    }
    return null;
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'dd MMM YYYY'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}
