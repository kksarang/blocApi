class Validator {
  static String? validateMail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'Enter your email address';
    }
    if (!regex.hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  static String? validatePhoneNumber(String? value) {
    String pattern = r'^(?:[+0]9)?[0-9]{10}$';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'Enter your phone number';
    }
    if (!regex.hasMatch(value)) {
      return 'Enter a valid phone number';
    } else {
      if (value.startsWith('0')) {
        return 'Enter a valid phone number';
      } else {
        return null;
      }
    }
  }

  static String? validatePhoneOrMail(String? value) {
    String? error = validateMail(value);
    if (error != null) {
      error = validatePhoneNumber(value);
      if (error != null)
        return 'Enter a valid phone number or email address';
      else
        return null;
    } else
      return null;
  }

  static String? validatePassword(String? value) {
    String pattern = r'^.*(?=.{6,16})(?=.*\d)(?=.*[a-zA-Z]).*$';
    RegExp regex = RegExp(pattern);
    if (value == null || !regex.hasMatch(value)) {
      return 'Use 6-character minimum \nmust include \none alphabetic and one numeric Character';
    } else {
      return null;
    }
  }

  static String? validateConfirmPassword(String pass1, String? pass2) {
    if (pass2 == null || pass2.isEmpty) {
      return "Confirm password";
    } else if (validatePassword(pass1) == null) {
      if (pass1 == pass2)
        return null;
      else
        return 'Wrong confirm password';
    } else if (validatePassword(pass2) != null) {
      return 'Enter a valid password';
    } else {
      return null;
    }
  }

  static String? nullValidate(String? value, String fieldName) =>
      value == null || value == "" ? "Please enter $fieldName" : null;

  static String? validateVerificationCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter verification code';
    }
    if (value.length != 4) {
      return 'Enter a valid verification code';
    } else {
      return null;
    }
  }
}
