import 'package:customer_secret_service/edit_personal_information/widgets/custom_dropdown.dart';
import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:customer_secret_service/global/design_system/widgets/box_spacer.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../global/design_system/themes/constants/sizes.dart';
import '../../global/design_system/widgets/customer_snack_bar.dart';
import '../../global/design_system/widgets/default_button.dart';
import '../../global/routes/routes.dart';
import '../application/register_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String password;

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
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        validator: (value) => value!.isEmpty
                            ? Strings.thisFieldIsMandatory
                            : null,
                        hintText: Strings.completeName,
                      ),
                      const BoxSpacer(),
                      CustomDropDown(
                        validator: (value) =>
                            value == null ? Strings.thisFieldIsMandatory : null,
                        items: const [
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
                      CustomTextFormField(
                        validator: (value) {
                          final emailRegex =
                              RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                          if (value!.isEmpty) {
                            return Strings.thisFieldIsMandatory;
                          } else if (!emailRegex.hasMatch(value)) {
                            return Strings.invalidMail;
                          }
                          return null;
                        },
                        hintText: Strings.email,
                      ),
                      const BoxSpacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextFormField(
                            validator: (value) => value!.isEmpty
                                ? Strings.thisFieldIsMandatory
                                : null,
                            textInputType: TextInputType.datetime,
                            hintText: Strings.birthDay,
                            textFieldWidth:
                                MediaQuery.of(context).size.width * 0.50,
                            leftPadding: Sizes.borderRadius * 2,
                            rightPadding: Sizes.borderRadius / 2,
                          ),
                          CustomTextFormField(
                            validator: (value) => value!.isEmpty
                                ? Strings.thisFieldIsMandatory
                                : null,
                            textInputType: TextInputType.number,
                            textFieldWidth:
                                MediaQuery.of(context).size.width * 0.34,
                            hintText: Strings.postalCode,
                            leftPadding: Sizes.borderRadius / 2,
                            rightPadding: Sizes.borderRadius * 2,
                          ),
                        ],
                      ),
                      const BoxSpacer(),
                      CustomTextFormField(
                        validator: (value) => value!.isEmpty
                            ? Strings.thisFieldIsMandatory
                            : null,
                        hintText: Strings.phone,
                        textInputType: const TextInputType.numberWithOptions(),
                      ),
                      const BoxSpacer(),
                      CustomTextFormField(
                        validator: (value) {
                          final passwordRegex = RegExp(
                              r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&]{8,}$');
                          if (value!.isEmpty) {
                            return Strings.thisFieldIsMandatory;
                          } else if (!passwordRegex.hasMatch(value)) {
                            return Strings.passwordCondition;
                          }
                          password = value;
                          return null;
                        },
                        hintText: Strings.password,
                        obscureText: true,
                      ),
                      const BoxSpacer(),
                      CustomTextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return Strings.thisFieldIsMandatory;
                          } else if (value != password) {
                            return Strings.confirmPassword;
                          }
                          return null;
                        },
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
                        bool registerDataIsValid =
                            _formKey.currentState!.validate();
                        if (registerDataIsValid) {
                          //TODO: Authenticate user
                          RegisterController().userAuthentication(context);

                          //TODO: Move this logic to controller

                          // status == RxStatus.success ?
                          showStormSnackBar(
                            context,
                            message: Strings.registerSuccess,
                            action: SnackBarAction(
                              label: Strings.confirmYourEmail,
                              onPressed: () {},
                            ),
                          );
                        } else {
                          showStormSnackBar(
                            context,
                            message: Strings.registerError,
                          );
                        }
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
