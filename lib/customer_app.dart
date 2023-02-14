import 'package:customer_secret_service/design_system/themes/themes.dart';
import 'package:customer_secret_service/pages/sign_in_and_sign_up/login_page.dart';
import 'package:customer_secret_service/pages/sign_in_and_sign_up/register_page.dart';
import 'package:customer_secret_service/pages/splash_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page/home_page.dart';

class CustommerApp extends StatelessWidget {
  const CustommerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Customer App',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        initialRoute: '/splash_page',
        routes: {
          '/splash_page': (_) => const SplashPage(),
          '/login_page': (_) => const LoginPage(),
          '/home_page': (_) => const HomePage(),
          '/register_page': (_) => const RegisterPage(),
        });
  }
}
