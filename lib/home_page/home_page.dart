import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appName),
      ),
    );
  }
}