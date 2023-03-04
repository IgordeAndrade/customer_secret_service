import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:flutter/material.dart';

import '../global/design_system/themes/constants/sizes.dart';
import '../global/design_system/widgets/box_spacer.dart';
import '../schedule/presentation/widgets/my_schedules_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appName),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(
            top: Sizes.borderPadding * 6,
            right: Sizes.borderPadding * 2,
            left: Sizes.borderPadding * 2,
            bottom: Sizes.borderPadding,
          ),
          child: Column(
            children: [
              Image.network(
                'https://i.ytimg.com/vi/zhBczzBinaw/mqdefault.jpg',
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: const [
            BoxSpacer.small(),
            MySchedulesBanner(),
          ],
        ),
      ),
    );
  }
}
