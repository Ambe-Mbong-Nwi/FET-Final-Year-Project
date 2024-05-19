import 'package:intl/intl.dart'; //for formatting date.

class AFormatter {
  //customising the date and formatting as needed.
  static String formatDate(DateTime? date) {
    date ?? DateTime.now();
    return DateFormat('dd-MMM-YYYY').format(date!);
  }

  //customising the cfa currency
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_Ca', symbol: 'CFA').format(amount);
  }

  //assuming a 9 digit phone number format
  //static method has one argument, and method is expected to return a string.
  //for first, if num has 9 digits(689822828) transform to  689 82 28 28
  //if num has 15 digits, (+237)689822828 transform to  (+237) 689 82 28 28
  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 9) {
      return '${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 5)} ${phoneNumber.substring(5, 7)} ${phoneNumber.substring(7)}';
    } else if (phoneNumber.length == 15) {
      return '(${phoneNumber.substring(0, 7)}) ${phoneNumber.substring(7, 10)} ${phoneNumber.substring(10, 12)} ${phoneNumber.substring(12, 14)} ${phoneNumber.substring(14)}';
    }

    return phoneNumber;
  }

  //for international phone numbers.
  static String formatInternationalPhoneNumber(String phoneNumber) {
    //remove all non-digit characters from number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    //extract the ountry code from the digitsOnly var
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    //add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write('');
      }
      i = end;
    }
    return phoneNumber;
  }
}
