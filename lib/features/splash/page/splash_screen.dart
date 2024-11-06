import 'package:flutter/material.dart';

import '../../login/bloc/login_screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
    return const Scaffold(
      body: Center(child: Text("Splash Screen", style: TextStyle(fontSize: 24))),
    );
  }
}
