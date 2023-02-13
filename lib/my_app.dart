import 'package:customer_secret_service/pages/login_page.dart';
import 'package:customer_secret_service/pages/splash_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/splash_page', routes: {
      '/splash_page': (_) => const SplashPage(),
      '/login_page': (_) => const LoginPage(),
    });
  }
}
