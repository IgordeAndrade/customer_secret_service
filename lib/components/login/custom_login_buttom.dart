import 'package:customer_secret_service/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: LoginController.loginController.inLoader,
        builder: (__, inLoader, ___) {
          return inLoader
              ? CircularProgressIndicator()
              : SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ElevatedButton(
                    onPressed: () {
                      LoginController.loginController
                          .userAuthentication(context);
                    },
                    child: const Text('Login'),
                  ),
                );
        });
  }
}
