import 'package:flutter/material.dart';

// صفحه اصلی
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const Center(child: Text('Welcome to Home Page', style: TextStyle(fontSize: 24))),
    );
  }
}