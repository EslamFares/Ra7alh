import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUpPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SignUpPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
