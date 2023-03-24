import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:flutter/material.dart';

import '../../../global/design_system/styles/custom_styles.dart';
import '../../../global/design_system/widgets/box_spacer.dart';
import '../../infrastructure/wallet_information.dart';

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
                  Strings.myBallance,
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
                        Strings.availableForWithdrawal,
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
                      Strings.lastPayment,
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
                Strings.viewDetails,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
