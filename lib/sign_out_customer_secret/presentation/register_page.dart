import 'package:customer_secret_service/edit_personal_information/widgets/custom_dropdown.dart';
import 'package:customer_secret_service/global/design_system/themes/constants/input_validator.dart';
import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:customer_secret_service/global/design_system/widgets/box_spacer.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_text_form_field.dart';
import 'package:customer_secret_service/sign_out_customer_secret/application/formatters.dart';
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

  late String? equalPassword;
  late String password;
  late String completeName;
  late String gender;
  late String mail;
  late String postalCode;
  late String phoneNumber;
  late String dateOfBirth;

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
                        onSaved: (value) => completeName = value!,
                        validator: (value) => value!.isEmpty
                            ? Strings.thisFieldIsMandatory
                            : null,
                        hintText: Strings.completeName,
                      ),
                      const BoxSpacer(),
                      CustomDropDown(
                        onSaved: (value) => gender = value!,
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
                        onSaved: (value) => mail = value!,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return Strings.thisFieldIsMandatory;
                          } else if (!InputValidator.email.hasMatch(value)) {
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
                            onSaved: (value) => dateOfBirth = value!,
                            inputFormatters: [birthFormatter],
                            validator: (value) => value!.isEmpty
                                ? Strings.thisFieldIsMandatory
                                : null,
                            textInputType: TextInputType.datetime,
                            hintText: Strings.birthDay,
                            textFieldWidth: MediaQuery.of(context).size.width *
                                Sizes.fieldMultiplierSmall,
                            leftPadding:
                                Sizes.borderRadius * Sizes.fieldMultiplier,
                            rightPadding:
                                Sizes.borderRadius / Sizes.fieldMultiplier,
                          ),
                          CustomTextFormField(
                            onSaved: (value) => postalCode = value!,
                            inputFormatters: [postalCodeFormatter],
                            validator: (value) {
                              if (value!.isEmpty) {
                                return Strings.thisFieldIsMandatory;
                              } else if (!InputValidator.cep.hasMatch(value)) {
                                return Strings.invalidPostalCode;
                              }
                              return null;
                            },
                            textInputType: TextInputType.number,
                            textFieldWidth: MediaQuery.of(context).size.width *
                                Sizes.fieldMultiplierxSmall,
                            hintText: Strings.postalCode,
                            leftPadding:
                                Sizes.borderRadius / Sizes.fieldMultiplier,
                            rightPadding:
                                Sizes.borderRadius * Sizes.fieldMultiplier,
                          ),
                        ],
                      ),
                      const BoxSpacer(),
                      CustomTextFormField(
                        onSaved: (value) => phoneNumber = value!,
                        inputFormatters: [phoneFormatter],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return Strings.thisFieldIsMandatory;
                          } else if (!InputValidator.phoneNumber
                              .hasMatch(value)) {
                            return Strings.invalidPhoneNumber;
                          }
                          return null;
                        },
                        hintText: Strings.phone,
                        textInputType: const TextInputType.numberWithOptions(),
                      ),
                      const BoxSpacer(),
                      CustomTextFormField(
                        validator: (value) {
                          equalPassword = value;

                          if (value!.isEmpty) {
                            return Strings.thisFieldIsMandatory;
                          } else if (!InputValidator.password.hasMatch(value)) {
                            return Strings.passwordCondition;
                          }

                          return null;
                        },
                        hintText: Strings.password,
                        obscureText: true,
                      ),
                      const BoxSpacer(),
                      CustomTextFormField(
                        onSaved: (value) => password = value!,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return Strings.thisFieldIsMandatory;
                          } else if (value != equalPassword) {
                            return Strings.passwordsMustBeeEquals;
                          }
                          return null;
                        },
                        hintText: Strings.confirmPassword,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                const BoxSpacer.large(),
                SizedBox(
                  height: Sizes.buttonHeight,
                  width: Sizes.buttonWidth,
                  child: DefaultButton(
                    onPressed: () {
                      bool registerDataIsValid =
                          _formKey.currentState!.validate();
                      if (registerDataIsValid) {
                        //TODO: Authenticate user
                        RegisterController().userAuthentication(context);
                        /*   User(
                            cep: postalCode,
                            dateOfBirth: dateOfBirth,
                            completeName: completeName,
                            mail: mail,
                            password: password,
                            gender: gender,
                            id: UniqueID.generate(),
                            userWallet: Wallet.,
                            phoneNumber: phoneNumber); */

                        //TODO: Move this logic to controller

                        // status == RxStatus.success ?
                        showStormSnackBar(
                          context,
                          message: Strings.sucessToRegister,
                          action: SnackBarAction(
                            label: Strings.confirmMail,
                            onPressed: () {},
                          ),
                        );
                      } else {
                        showStormSnackBar(context,
                            message: Strings.failToRegister);
                      }
                    },
                    contentButton: Strings.register,
                  ),
                ),
                const BoxSpacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
