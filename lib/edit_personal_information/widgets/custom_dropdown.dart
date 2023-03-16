import 'package:customer_secret_service/global/design_system/themes/constants/sizes.dart';

import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown(
      {super.key, required this.items, required this.label, this.validator});

  final List<DropdownMenuItem<String>> items;
  final String label;
  final String? Function(String?)? validator;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    ColorScheme theme = Theme.of(context).colorScheme;

    String option = '';
    return Padding(
      padding: const EdgeInsets.only(
        left: Sizes.borderRadius * 2,
        right: Sizes.borderRadius * 2,
      ),
      child: DropdownButtonFormField<String>(
          validator: widget.validator,
          decoration: InputDecoration(
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: theme.error)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: theme.error)),
            label: Text(widget.label),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(Sizes.borderRadius),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).hintColor),
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
