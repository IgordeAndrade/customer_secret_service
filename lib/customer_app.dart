import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:customer_secret_service/global/design_system/themes/themes.dart';
import 'package:customer_secret_service/global/routes/routes.dart';
import 'package:customer_secret_service/login/presentation/login_page.dart';
import 'package:customer_secret_service/global/presentation/splash_page.dart';
import 'package:customer_secret_service/sign_out_customer_secret.dart/presentation/presentation/register_page.dart';
import 'package:flutter/material.dart';

import 'home_page/home_page.dart';

class CustommerApp extends StatelessWidget {
  const CustommerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: Strings.appName,
        debugShowCheckedModeBanner: false,
        theme: darkTheme,
        initialRoute: Routes.splashPage,
        routes: {
          Routes.splashPage: (_) => const SplashPage(),
          Routes.loginPage: (_) => const LoginPage(),
          Routes.homePage: (_) => const HomePage(),
          Routes.registerPage: (_) => const RegisterPage(),
        });
  }
}
