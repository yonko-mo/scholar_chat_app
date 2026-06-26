class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'email is required';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'please enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'password is required';
    }
    if (value.length < 6) {
      return 'password must be at least 6 characters';
    }
    return null;
  }
}
