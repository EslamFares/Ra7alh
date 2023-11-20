import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnboardingPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OnboardingPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
