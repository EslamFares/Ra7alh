import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_strings.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(AppStrings.appName),
    );
  }
}
