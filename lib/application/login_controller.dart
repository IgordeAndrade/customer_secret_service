import 'package:flutter/material.dart';

class LoginController {
  static LoginController loginController = LoginController();

  ValueNotifier inLoader = ValueNotifier<bool>(false);

  Future<void> userAuthentication(context) async {
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 3));
    inLoader.value = false;
    Navigator.pushReplacementNamed(context, '/home_page');
  }
}
