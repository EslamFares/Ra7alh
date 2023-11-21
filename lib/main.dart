import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ra7alh/core/routers/app_router.dart';
import 'package:ra7alh/core/services/services_locator.dart';
import 'package:ra7alh/core/utils/app_colors.dart';
import 'package:ra7alh/core/utils/mybloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ra7alh/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
