import 'package:customer_secret_service/global/routes/routes.dart';
import 'package:flutter/material.dart';

import '../design_system/themes/constants/sizes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then(
        (value) => Navigator.of(context).pushReplacementNamed(Routes.loginPage));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: const [
          SizedBox(
            height: Sizes.splashProgressSize,
            width:  Sizes.splashProgressSize,
            child: CircularProgressIndicator(),
          ),
          Icon(
            Icons.search,
            size: Sizes.iconSizeXLarge,
          ),
        ],
      )),
    );
  }
}
