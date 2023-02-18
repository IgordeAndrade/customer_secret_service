import 'package:flutter/material.dart';

import '../../application/login_controller.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: LoginController.loginController.inLoader,
        builder: (__, isLoading, ___) {
          return isLoading
              ? const CircularProgressIndicator()
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
