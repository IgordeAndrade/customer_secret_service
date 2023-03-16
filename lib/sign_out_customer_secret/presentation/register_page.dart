import 'package:customer_secret_service/edit_personal_information/widgets/custom_dropdown.dart';
import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:customer_secret_service/global/design_system/widgets/box_spacer.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../global/design_system/themes/constants/sizes.dart';
import '../../global/design_system/widgets/customer_snack_bar.dart';
import '../../global/design_system/widgets/default_button.dart';
import '../../global/routes/routes.dart';
import '../application/register_controller.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pushReplacementNamed(
                  context,
                  Routes.loginPage,
                ),
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const BoxSpacer.large(),
                Text(Strings.createCount, style: theme.textTheme.displayMedium),
                const BoxSpacer.xLarge(),
                Form(
                  child: Column(
                    children: [
                      const CustomTextFormField(
                        hintText: Strings.completeName,
                      ),
                      const BoxSpacer(),
                      const CustomDropDown(
                        items: [
                          DropdownMenuItem(
                            value: Strings.male,
                            child: Text(Strings.male),
                          ),
                          DropdownMenuItem(
                            value: Strings.female,
                            child: Text(Strings.female),
                          ),
                        ],
                        label: Strings.gender,
                      ),
                      const BoxSpacer(),
                      const CustomTextFormField(
                        hintText: Strings.email,
                      ),
                      const BoxSpacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextFormField(
                            textInputType: TextInputType.datetime,
                            hintText: Strings.birthDay,
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
                      const BoxSpacer(),
                      const CustomTextFormField(
                        hintText: 'Numero de celular',
                        textInputType: TextInputType.numberWithOptions(),
                      ),
                      const BoxSpacer(),
                      const CustomTextFormField(
                        hintText: Strings.password,
                        obscureText: true,
                      ),
                      const BoxSpacer(),
                      const CustomTextFormField(
                        hintText: Strings.confirmPassword,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.05),
                  child: SizedBox(
                    height: Sizes.buttonHeight,
                    width: Sizes.buttonWidth,
                    child: DefaultButton(
                      onPressed: () {
                        //TODO: Authenticate user
                        RegisterController().userAuthentication(context);

                        //TODO: Move this logic to controller

                        // status == RxStatus.success ?
                        showStormSnackBar(
                          context,
                          message: 'Cadastro realizado com sucesso!',
                          action: SnackBarAction(
                            label: 'Confirme seu e-mail',
                            onPressed: () {},
                          ),
                        );
                        // : showStormSnackBar(context, message: 'Falha ao se cadastrar');
                      },
                      contentButton: Strings.register,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
