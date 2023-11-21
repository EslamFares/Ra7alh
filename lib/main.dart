import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ra7alh/core/functions/check_user_state.dart';
import 'package:ra7alh/core/services/services_locator.dart';
import 'package:ra7alh/core/utils/mybloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ra7alh/firebase_options.dart';
import 'package:ra7alh/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  checkUserState();

  await GetStorage.init();
  getItSetup();

  runApp(const MyApp());
}
