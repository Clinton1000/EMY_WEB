class FieldValidator{
  static String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "please enter your email address";
    }
    if (!RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(value)) {
      return " Invalid email address";
    }
    return null;
  }

  static String? validatePasswordSignup(String? value) {
    if (value!.isEmpty) {
      return "please enter your password";
    }
    if (value.length < 6) {
      return "password length is short";
    }
    return null;
  }

  static String? validateEmptyField(String? value) {
    if (value!.isEmpty) {
      return "Please enter your name";
    }
    return null;
  }
}