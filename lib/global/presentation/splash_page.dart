import 'package:flutter/material.dart';

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
        (value) => Navigator.of(context).pushReplacementNamed('/login_page'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: const [
          SizedBox(
            height: 250,
            width: 250,
            child: CircularProgressIndicator(),
          ),
          Icon(
            Icons.search,
            size: 150,
          ),
        ],
      )),
    );
  }
}