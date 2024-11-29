abstract class IValidationService {
  String? validateName(String? value);
  String? validatePassword(String? value);
  String? validateEmail(String? value);
  String? validateEmailOrPhoneNumber(String? value);
  String? validateNotEmpty(String? value);
}

class ValidationServiceImpl implements IValidationService {
  @override
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is required';
    } else if (value.length < 3) {
      return 'Username too short';
    } else if (value.length > 20) {
      return 'Username too long';
    } else if (!RegExp(r'^[\p{L}0-9_]+$', unicode: true).hasMatch(value)) {
      return 'Username not valid';
    }
    return null;
  }

  @override
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Field is required";
    } else if (!RegExp(r'^.{6,}$').hasMatch(value)) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  @override
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Field is required";
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$")
        .hasMatch(value)) {
      return 'Email not formatted well';
    }
    return null;
  }

  @override
  String? validateEmailOrPhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Field is required";
    }

    // Check if the value matches the email format
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$")
        .hasMatch(value)) {
      return null; // If it's a valid email, return null
    }

    // Check if the value matches the Egyptian phone number format
    if (RegExp(r"^(?:\+20|0)(1[0-9])\d{8}$").hasMatch(value)) {
      return null; // If it's a valid phone number, return null
    }

    // If neither, return a generic error message
    return 'Invalid email or phone number format';
  }

  @override
  String? validateNotEmpty(String? value) {
    return value == null || value.isEmpty ? "Field is required" : null;
  }
}
