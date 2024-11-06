import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/login/bloc/login_bloc.dart';
import 'features/splash/page/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(),
      child: MaterialApp(
        home: const SplashScreen(),
      ),
    );
  }
}
