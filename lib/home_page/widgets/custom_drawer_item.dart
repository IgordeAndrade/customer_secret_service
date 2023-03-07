import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  final IconData icon;
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme =  Theme.of(context);
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: theme.colorScheme.onSurface,),
      label: Text(
        title, style: theme.textTheme.button!.copyWith(color: theme.colorScheme.primary),
      ),
    );
  }
}
