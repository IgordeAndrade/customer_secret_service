import 'package:customer_secret_service/global/design_system/themes/constants/sizes.dart';
import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:customer_secret_service/global/design_system/widgets/box_spacer.dart';
import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  const InformationCard(
      {super.key,
      required this.widget,
      required this.title,
      required this.onSave});

  final Widget widget;
  final String title;
  final void Function()? onSave;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Sizes.smallElevation,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * Sizes.xbuttonWidthMultiplier,
        child: Column(
          children: [
            const BoxSpacer.large(),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const BoxSpacer.large(),
            widget,
            const BoxSpacer.large(),
            SizedBox(
              height: Sizes.buttonHeight,
              width: Sizes.buttonWidth,
              child: ElevatedButton(
                onPressed: onSave,
                child: const Text(Strings.save),
              ),
            ),
            const BoxSpacer.large(),
          ],
        ),
      ),
    );
  }
}
