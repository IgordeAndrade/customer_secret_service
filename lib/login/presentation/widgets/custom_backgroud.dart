import 'package:flutter/material.dart';

import '../../../global/design_system/themes/color_schemes.g.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            darkColorScheme.onPrimary,
            Colors.black,
          ],
        ),
      ),
      child: widget,
    );
  }
}
