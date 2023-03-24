class InputValidator {
  static final cep = RegExp(r'^[0-9]{5}-?[0-9]{3}$');

  static final password =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&]{8,}$');

  static final email = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-])");

  static final phoneNumber = RegExp(
      r'^\(?([1-9]{2})\)?[-. ]?([9]{1})?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$');
}
