import 'package:customer_secret_service/global/design_system/widgets/box_spacer.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  final Icon icon;
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const BoxSpacer.small(),
        TextButton(
          onPressed: onPressed,
          child: Text(
            title,
          ),
        )
      ],
    );
  }
}
