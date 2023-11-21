import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginViewPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoginViewPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
