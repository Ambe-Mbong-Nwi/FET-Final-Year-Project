class AValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    //regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

//validate password
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    //checking minimum password length
    if (value.length < 7) {
      return 'Password must be at least 7 characters long.';
    }

    //checking for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least 1 uppercase letter.';
    }

    //checking for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least 1 number.';
    }

    //checking for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*()+=><,./?\{}[]~`]'))) {
      return 'Password must contain at least 1 special charater.';
    }
    return null;
  }

//validate phone number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    //regular expression for phone number
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (9 digits required)';
    }

    return null;
  }
}
