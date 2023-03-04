import 'package:flutter/material.dart';

import '../../../global/design_system/widgets/box_spacer.dart';

class MySchedulesBanner extends StatelessWidget {
  const MySchedulesBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Visibility(
      //TODO: add logic to visibility
      visible: true,
      child: Material(
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Icon(Icons.calendar_month),
                  const BoxSpacer.small(),
                  Text(
                    'Meus agendamentos',
                    style: theme.textTheme.headline5,
                  )
                ],
              ),
              const BoxSpacer(),
              Column(
                children: List.generate(
                  loadedSchedules.length,
                  (index) => ElevatedButton.icon(
                    style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all(
                          theme.colorScheme.onPrimary),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                    label: Text(
                      loadedSchedules.keys.elementAt(index),
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Map<String, String> loadedSchedules = {
  'Rapidez da entrega - MacDonalds': '01/09/1939',
  'Qualidade da defesa - Duff': '01/03/1492',
};
