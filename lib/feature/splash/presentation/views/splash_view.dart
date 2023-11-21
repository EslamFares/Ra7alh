import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/database/cash/getstorage_helper.dart';
import 'package:ra7alh/core/routers/app_routes.dart';
import 'package:ra7alh/core/style/app_text_styles.dart';
import 'package:ra7alh/core/utils/app_assets.dart';
import 'package:ra7alh/core/utils/app_size.dart';
import 'package:ra7alh/core/utils/app_strings.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isFisrtTime = GetStorageHelper.readData('isfisrttime') ?? true;
    if (isFisrtTime == true) {
      delayNavigate(AppRoutes.onboardingView);
    } else {
      FirebaseAuth.instance.currentUser == null
          ? delayNavigate(AppRoutes.signUpView)
          : delayNavigate(AppRoutes.homeView);
    }
    super.initState();
  }

  void delayNavigate(String path) {
    Future.delayed(const Duration(seconds: 2), () {
      context.pushReplacement(path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: context.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.iconSmall,
              ),
              Text(AppStrings.appName,
                  style: AppTextStyles.font22PacificoBlueW400
                      .copyWith(fontSize: 64, color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
