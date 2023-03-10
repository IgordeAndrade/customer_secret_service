import 'package:customer_secret_service/global/design_system/themes/constants/sizes.dart';
import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key, required this.items});

  final List<DropdownMenuItem<String>> items;

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
            label: const Text(Strings.gender),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          borderRadius: BorderRadius.circular(10),
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
