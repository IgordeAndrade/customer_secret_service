import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:customer_secret_service/global/routes/routes.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_login_button.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isValidCharacters = true;

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
                        onChanged: (value) {
                          setState(() {
                            isValidCharacters = RegExp(
                                    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-])")
                                .hasMatch(value);
                          });
                        },
                        isValidCharacters: isValidCharacters,
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
                        onChanged: (value) {
                          setState(() {
                            isValidCharacters = passwordValidate(value);
                          });
                        },
                        isValidCharacters: isValidCharacters,
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

  bool passwordValidate(String password) {
    if (password.length < 6) {
      return false;
    }
    RegExp regexNumber = RegExp(r'\d');
    if (!regexNumber.hasMatch(password)) {
      return false;
    }
    RegExp regexMaiuscula = RegExp(r'[A-Z]');
    if (!regexMaiuscula.hasMatch(password)) {
      return false;
    }
    RegExp regexMinuscula = RegExp(r'[a-z]');
    if (!regexMinuscula.hasMatch(password)) {
      return false;
    }
    RegExp regexSimbolo =
        RegExp(r'[!@#\$%\^&\*\(\)\-\+=_\{\}\[\]:;<>\?\.\\\/\|]');
    if (!regexSimbolo.hasMatch(password)) {
      return false;
    }
    return true;
  }
}
