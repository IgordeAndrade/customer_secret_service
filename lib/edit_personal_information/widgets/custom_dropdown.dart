import 'package:customer_secret_service/global/design_system/themes/constants/sizes.dart';

import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key, required this.items, required this.label});

  final List<DropdownMenuItem<String>> items;
  final String label;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    String option = '';
    return Padding(
      padding: const EdgeInsets.only(
        left: Sizes.borderRadius * 2,
        right: Sizes.borderRadius * 2,
      ),
      child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
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
