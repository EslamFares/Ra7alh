import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ra7alh/core/routers/app_router.dart';
import 'package:ra7alh/core/services/services_locator.dart';
import 'package:ra7alh/core/utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  getItSetup();

  runApp(const MyApp());
}

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
      routerConfig: appRouter,
    );
  }
}
