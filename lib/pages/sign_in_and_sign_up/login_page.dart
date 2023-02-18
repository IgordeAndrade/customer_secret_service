import 'package:customer_secret_service/components/login/custom_login_buttom.dart';
import 'package:customer_secret_service/pages/sign_in_and_sign_up/custom_backgroud.dart';
import 'package:customer_secret_service/pages/sign_in_and_sign_up/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        widget: Center(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  const Text(
                    'Entre',
                    style: TextStyle(
                        color: Colors.white,
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
                          hintText: 'E-mail',
                          prefixIcon: Icon(Icons.mail),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const CustomTextFormField(
                          hintText: 'Senha',
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
                    child: const Divider(
                      color: Color.fromARGB(113, 255, 255, 255),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Ainda não tem uma conta?',
                        style: TextStyle(color: Colors.white60),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register_page');
                          },
                          child: const Text('Cadastre-se.'))
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
