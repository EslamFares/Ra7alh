import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForgetPasswordPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ForgetPasswordPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
