import 'package:flutter/material.dart';

import '../../../global/design_system/styles/custom_styles.dart';
import '../../../global/design_system/themes/constants/strings.dart';
import '../../../global/design_system/widgets/box_spacer.dart';

class TrainingBanner extends StatelessWidget {
  const TrainingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Icon(Icons.auto_stories_sharp),
                const BoxSpacer.small(),
                Text(
                  Strings.disponibilesTraining,
                  style: theme.textTheme.headline5,
                )
              ],
            ),
            const BoxSpacer(),
            Column(
              children: [...List.generate(
                3,
                (index) => TextButton(
                    style: ButtonStyle(
                                       
                      backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                        if (index.isEven
                        ) {
                          return theme.colorScheme.secondary.withOpacity(0.5);
                        } else {
                         return theme.colorScheme.secondary.withOpacity(0.25);
                        }
                      }),
                      textStyle:
                          MaterialStateProperty.resolveWith<TextStyle?>(
                        (states) => theme.textTheme.bodyText1,
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            loadedTrainings.keys.elementAt(index),
                          ),
                          const BoxSpacer.small(),
                          const Text('-'),
                          const BoxSpacer.small(),
                          Text(
                            loadedTrainings.values.elementAt(index),
                          ),
                        ],
                      ),
                    )),
              ),
              ElevatedButton.icon(
                    style: CustomStyles.buttonStyle,
                    onPressed: () {},
                    icon: const Icon(Icons.auto_stories_sharp),
                    label: Text(
                      Strings.viewAllTraining,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
              ]
            )
          ],
        ),
      ),
    );
  }
}

Map<String, String> loadedTrainings = {
  'Atendimento': 'Varejo',
  'Serviço': 'Alimentício',
  'Velocidade': 'Manutenção',
  'Atendiment': 'Varejo',
  'Serviç': 'Alimentício',
  'Velocidad': 'Manutenção',
};
