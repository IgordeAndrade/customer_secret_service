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
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.borderRadius * 2),
      child: TextFormField(
        style: TextStyle(color: theme.onPrimary),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
                left: Sizes.borderRadius * 1.5, right: Sizes.borderRadius),
            child: prefixIcon,
          ),
          hintText: hintText,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.borderRadius),
              borderSide: BorderSide(color: theme.outline)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.borderRadius),
              borderSide: BorderSide(color: theme.primary)),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
