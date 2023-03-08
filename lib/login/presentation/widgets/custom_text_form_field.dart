import 'package:customer_secret_service/global/design_system/themes/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.prefixIcon,
    this.textInputType,
    this.textFieldWidth,
    this.leftPadding,
    this.rightPadding,
    this.label,
  });

  final String? hintText;
  final String? label;
  final bool? obscureText;
  final Icon? prefixIcon;
  final TextInputType? textInputType;
  final double? textFieldWidth;
  final double? leftPadding;
  final double? rightPadding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.only(
        left: leftPadding ?? Sizes.borderRadius * 2,
        right: rightPadding ?? Sizes.borderRadius * 2,
      ),
      child: SizedBox(
        width: textFieldWidth ?? MediaQuery.of(context).size.width,
        child: TextFormField(
          keyboardType: textInputType ?? TextInputType.text,
          style: TextStyle(color: theme.onPrimary),
          decoration: InputDecoration(
            prefixIcon: prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(
                        left: Sizes.borderRadius * 1.5,
                        right: Sizes.borderRadius),
                    child: prefixIcon,
                  )
                : null,
            prefix: prefixIcon == null
                ? const SizedBox(
                    width: Sizes.borderRadius,
                  )
                : null,
            hintText: hintText,
            label: hintText == null ? Text('$label') : null,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.borderRadius),
                borderSide: BorderSide(color: theme.outline)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.borderRadius),
                borderSide: BorderSide(color: theme.primary)),
          ),
          obscureText: obscureText ?? false,
        ),
      ),
    );
  }
}
