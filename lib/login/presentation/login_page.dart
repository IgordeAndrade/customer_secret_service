import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:customer_secret_service/global/routes/routes.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_backgroud.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_login_button.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      body: CustomBackground(
        widget: Center(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Text(
                    Strings.enter,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 48,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Form(
                    child: Column(
                      children: [
                        const CustomTextFormField(
                          hintText: Strings.email,
                          prefixIcon: Icon(Icons.mail),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const CustomTextFormField(
                          hintText: Strings.password,
                          obscureText: true,
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  const CustomLoginButton(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Divider(
                      color: theme.outline,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.noCount,
                        style: TextStyle(color: theme.background),
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
      ),
    );
  }
}
