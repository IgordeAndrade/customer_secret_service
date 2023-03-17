import 'package:customer_secret_service/global/design_system/themes/constants/sizes.dart';

import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    super.key,
    required this.items,
    required this.label,
    this.validator,
    this.onSaved,
  });

  final List<DropdownMenuItem<String>> items;
  final String label;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    String option = '';
    return Padding(
      padding: const EdgeInsets.only(
        left: Sizes.borderRadius * Sizes.fieldMultiplier,
        right: Sizes.borderRadius * Sizes.fieldMultiplier,
      ),
      child: DropdownButtonFormField<String>(
          onSaved: widget.onSaved,
          validator: widget.validator,
          decoration: InputDecoration(
            labelStyle: TextStyle(color: theme.hintColor),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: theme.colorScheme.error)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: theme.colorScheme.error)),
            label: Text(widget.label),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: theme.primaryColor),
              borderRadius: BorderRadius.circular(Sizes.borderRadius),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: theme.hintColor),
              borderRadius: BorderRadius.circular(Sizes.borderRadius),
            ),
          ),
          borderRadius: BorderRadius.circular(Sizes.borderRadius),
          value: option.isEmpty ? null : option,
          items: widget.items,
          onChanged: (choose) {
            setState(() {
              option = choose.toString();
            });
          }),
    );
  }
}
