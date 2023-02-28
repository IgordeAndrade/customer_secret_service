import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../global/design_system/themes/constants/sizes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Text(
                  Strings.createCount,
                  style: TextStyle(
                      color: theme.onPrimary,
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
                        hintText: Strings.name,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      const CustomTextFormField(
                        hintText: Strings.email,
                      ),
                      const SizedBox(
                        height: Sizes.sizedBoxHeigth,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextFormField(
                            textInputType: TextInputType.datetime,
                            hintText: 'Data de nascimento',
                            textFieldWidth:
                                MediaQuery.of(context).size.width * 0.50,
                            leftPadding: Sizes.borderRadius * 2,
                            rightPadding: Sizes.borderRadius / 2,
                          ),
                          CustomTextFormField(
                            textInputType: TextInputType.number,
                            textFieldWidth:
                                MediaQuery.of(context).size.width * 0.34,
                            hintText: 'CEP',
                            leftPadding: Sizes.borderRadius / 2,
                            rightPadding: Sizes.borderRadius * 2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: Sizes.sizedBoxHeigth,
                      ),
                      const CustomTextFormField(
                        hintText: Strings.password,
                        obscureText: true,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      const CustomTextFormField(
                        hintText: Strings.confirmPassword,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                SizedBox(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.onPrimary),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(Strings.register),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
