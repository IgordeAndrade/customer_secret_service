import 'package:flutter/material.dart';

import '../../../global/design_system/styles/custom_styles.dart';
import '../../../global/design_system/widgets/box_spacer.dart';

class MyWalletBanner extends StatefulWidget {
  const MyWalletBanner({super.key});

  @override
  State<MyWalletBanner> createState() => _MyWalletBannerState();
}

class _MyWalletBannerState extends State<MyWalletBanner> {
  bool showValue = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final Widget textHidden = Container(
      color: theme.textTheme.headline4!.color,
      height: theme.textTheme.headline4!.fontSize! * 1.3,
      width: 150,
    );

    return Material(
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Meu saldo',
                  style: theme.textTheme.headline5,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      showValue = !showValue;
                    });
                  },
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      showValue
                          ? Text(
                              'R\$ ${walletInformation['Saldo Total']}',
                              style: theme.textTheme.headline4,
                            )
                          : textHidden,
                      const BoxSpacer.small(),

                      Text(
                        'Disponível para Saque',
                        style: theme.textTheme.bodyLarge,
                      ),
                      const BoxSpacer.xSmall(),

                      showValue
                          ? Text(
                              'R\$ ${walletInformation['Disponível para saque']}',
                              style: theme.textTheme.headline5!.copyWith(
                                  color: theme.textTheme.headline4!.color),
                            )
                          : textHidden,
                    ],
                  ),
                ),
                Column(
                  children: [
                    const BoxSpacer.small(),
                    Text(
                      'Último pagamento',
                      style: theme.textTheme.bodyLarge,
                    ),
                    const BoxSpacer.small(),
                    const BoxSpacer.xxSmall(),
                    showValue
                        ? Text(
                            'R\$ ${walletInformation['Último pagamento']['Valor']}',
                            style: theme.textTheme.headline5!.copyWith(
                                color: theme.textTheme.headline4!.color),
                          )
                        : textHidden,
                    const BoxSpacer.xSmall(),
                    Text(
                      '${walletInformation['Último pagamento']['Data']}',
                      style: theme.textTheme.bodyLarge!
                          .copyWith(color: theme.textTheme.headline4!.color),
                    )
                  ],
                )
              ],
            ),
            const BoxSpacer(),
            ElevatedButton.icon(
              style: CustomStyles.buttonStyle,
              onPressed: () {},
              icon: const Icon(Icons.monetization_on_outlined),
              label: Text(
                'Ver histórico de pagamentos',
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Map<String, dynamic> walletInformation = {
  'Saldo Total': 50.00,
  'Disponível para saque': 15.00,
  'Último pagamento': {
    'Valor': 10.00,
    'Data': '10/03/2023',
  },
  'Histórico de pagamentos': {
    0: {'Data': '09/03/2023', 'Valor': 5.00, 'serviço': 'Rapidez na entrega'},
    1: {'Data': '10/03/2023', 'Valor': 10.00, 'serviço': 'Qualidade na defesa'},
    2: {'Data': '11/03/2023', 'Valor': 35.00, 'serviço': 'Rapidez na entrega'}
  },
};
