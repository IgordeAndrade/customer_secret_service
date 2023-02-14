import 'package:customer_secret_service/design_system/themes/themes.dart';
import 'package:flutter/material.dart';

import 'home_page/home_page.dart';

class CustommerApp extends StatelessWidget {
  const CustommerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Customer App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}
