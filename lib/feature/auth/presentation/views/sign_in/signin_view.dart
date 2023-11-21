import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
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
