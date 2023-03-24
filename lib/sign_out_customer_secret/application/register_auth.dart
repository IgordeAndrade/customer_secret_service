import 'package:customer_secret_service/global/routes/routes.dart';
import 'package:flutter/material.dart';

class RegisterController {
  RegisterController();

  ValueNotifier inLoader = ValueNotifier<bool>(false);

  Future<void> userAuthentication(context) async {
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 3));
    inLoader.value = false;
    Navigator.pushReplacementNamed(context, Routes.homePage);
  }
}
