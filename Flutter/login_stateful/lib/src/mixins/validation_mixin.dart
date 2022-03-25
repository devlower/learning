// import 'dart:ffi';

class ValidationMixin {
  String? validateEmail(String? value) {
    // return null if valid
    // otherwise string (with the error message) if not valid

    if (!value!.contains('@') || !value.contains('.com')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value!.length < 4) {
      return 'Password must be at least 4 characters';
    }
    return null;
  }
}
