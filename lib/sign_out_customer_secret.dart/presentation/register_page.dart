import 'package:customer_secret_service/pages/sign_in_and_sign_up/custom_backgroud.dart';
import 'package:customer_secret_service/pages/sign_in_and_sign_up/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                    'Cadastre-se',
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
                        const CustomTextFormField(hintText: 'Nome:'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        const CustomTextFormField(hintText: 'E-mail:'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        const CustomTextFormField(
                          hintText: 'senha:',
                          obscureText: true,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        const CustomTextFormField(
                          hintText: 'confirme a senha:',
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
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('REGISTRAR'),
                    ),
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
