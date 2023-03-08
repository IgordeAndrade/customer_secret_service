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
      elevation: 10,
      child: SizedBox(
        width: double.infinity,
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
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: onSave,
                child: const Text('Salvar'),
              ),
            ),
            const BoxSpacer.large(),
          ],
        ),
      ),
    );
  }
}
