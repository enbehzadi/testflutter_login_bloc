import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../home/page/home_page.dart';
import 'login_bloc.dart';
import '../page/login_state.dart';
import 'login_event.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (state is LoginFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Login Failed')),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  loginBloc.add(LoginSubmitted(
                    usernameController.text,
                    passwordController.text,
                  ));
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
