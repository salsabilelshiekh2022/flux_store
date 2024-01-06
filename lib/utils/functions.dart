class Validator {
  static String? validateName(String? value) {
    if (value!.isEmpty) {
      return "Field is required";
    } else if (value.length < 3) {
      return "Enter correct name";
    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
      return "Enter correct name";
    } else {
      return null;
    }
  }

  static String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Field is required";
    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return "Enter correct email";
    } else {
      return null;
    }
  }

  static bool passwordValidate(String pass) {
    String password = pass.trim();
    if (RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  static String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return "Field is required";
    } else {
      bool result = passwordValidate(value);
      if (result) {
        return null;
      } else {
        return " Password should contain Capital, small letter & Number & Special";
      }
    }
  }

  /*
  String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
        RegExp regExp = new RegExp(pattern);
        return regExp.hasMatch(value);
   */
}
