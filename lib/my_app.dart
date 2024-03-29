import 'package:flutter/material.dart';
import 'package:ra7alh/core/routers/screens_router.dart';
import 'package:ra7alh/core/utils/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ra7alh',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blue),
        useMaterial3: true,
      ),
      // home: const Scaffold(),
      routerConfig: screensRouter,
    );
  }
}
