import 'package:flutter/material.dart';

import '../themes/constants/sizes.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.onPressed,
    required this.contentButton,
  });
  final void Function()? onPressed;
  final String contentButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => Theme.of(context).colorScheme.inversePrimary,
        ),
        minimumSize: MaterialStateProperty.resolveWith(
          (states) => const Size(
            Sizes.buttonWidth,
            Sizes.buttonHeight,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        contentButton,
        style: const TextStyle(
          fontSize: 17,
          shadows: [
            Shadow(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
