import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:flutter/material.dart';

import '../../../global/design_system/themes/constants/sizes.dart';
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
              : ElevatedButton(
                  style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.onPrimary),
                  ),
                  onPressed: () {
                    LoginController.loginController.userAuthentication(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Sizes.loginButtonHeight),
                    child: Text(Strings.login),
                  ),
                );
        });
  }
}
