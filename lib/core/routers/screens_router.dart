import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/routers/app_routes.dart';
import 'package:ra7alh/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:ra7alh/feature/auth/presentation/views/sign_in/signin_view.dart';
import 'package:ra7alh/feature/auth/presentation/views/sign_up/signup_view.dart';
import 'package:ra7alh/feature/home/presentation/view/home_view.dart';
import 'package:ra7alh/feature/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'package:ra7alh/feature/splash/presentation/views/splash_view.dart';

final GoRouter screensRouter = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const SplashView()),
  // GoRoute(
  //     path: "/",
  //     builder: (context, state) => BlocProvider(
  //           create: (context) => AuthCubit(),
  //           child: const SignUpView(),
  //         )),
  GoRoute(
      path: AppRoutes.onboardingView,
      builder: (context, state) => const OnboardingView()),
  GoRoute(
      path: AppRoutes.signUpView,
      builder: (context, state) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignUpView(),
          )),
  GoRoute(
      path: AppRoutes.signInView,
      builder: (context, state) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignInView(),
          )),
  GoRoute(
      path: AppRoutes.homeView, builder: (context, state) => const HomeView()),
]);
