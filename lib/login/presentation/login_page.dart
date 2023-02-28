import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:customer_secret_service/global/routes/routes.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_login_button.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const Text(
                  Strings.enter,
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Form(
                  child: Column(
                    children: [
                      CustomTextFormField(
                        hintText: Strings.email,
                        prefixIcon: Icon(
                          Icons.mail,
                          color: theme.onPrimary,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      CustomTextFormField(
                        hintText: Strings.password,
                        obscureText: true,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: theme.onPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    bottom: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: const CustomLoginButton(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Divider(
                    color: theme.onPrimary,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.noCount,
                      style: TextStyle(color: theme.onPrimary),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.registerPage);
                        },
                        child: const Text(Strings.createCount))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
