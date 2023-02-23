import 'package:customer_secret_service/global/design_system/themes/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.obscureText = false,
      this.prefixIcon});

  final String hintText;
  final bool obscureText;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * Sizes.inputTextWidthMultiplier,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.borderRadius),
          ),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
