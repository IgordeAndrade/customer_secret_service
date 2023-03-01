import 'package:flutter/material.dart';

import '../utils/message_condition.dart';

void showStormSnackBar(
  BuildContext context, {
  required String message,
  MessageCondition condition = MessageCondition.neutral,
  SnackBarAction? action,
  Duration duration = const Duration(seconds: 4),
}) {
  /// If the color is null, then the condition is neutral,
  /// then the themeData handles the snackbar background color.
  Color? color;

  if (condition == MessageCondition.error) {
    color = Theme.of(context).colorScheme.error;
  } else if (condition == MessageCondition.success) {
    color = Theme.of(context).colorScheme.secondary;
  }

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      behavior: SnackBarBehavior.floating,
      duration: duration,
      action: action,
      margin: EdgeInsets.zero,
      content: Text(
        message,
        textAlign: action != null ? TextAlign.left : TextAlign.center,
      ),
    ),
  );
}