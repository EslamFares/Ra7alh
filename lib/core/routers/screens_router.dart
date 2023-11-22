import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/routers/app_routes.dart';
import 'package:ra7alh/feature/signup/presentation/cubit/signup_cubit.dart';
import 'package:ra7alh/feature/signin/presentation/cubit/signin_cubit.dart';
import 'package:ra7alh/feature/signin/presentation/view/signin_view.dart';
import 'package:ra7alh/feature/signup/presentation/views/signup_view.dart';
import 'package:ra7alh/feature/home/presentation/view/home_view.dart';
import 'package:ra7alh/feature/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ra7alh/feature/signin/presentation/view/forget_password_view.dart';
// ignore: unused_import
import 'package:ra7alh/feature/splash/presentation/views/splash_view.dart';

final GoRouter screensRouter = GoRouter(routes: [
  // GoRoute(path: "/", builder: (context, state) => const ForgetPasswordView()),
  GoRoute(path: "/", builder: (context, state) => const SplashView()),
  GoRoute(
      path: AppRoutes.onboardingView,
      builder: (context, state) => const OnboardingView()),
  GoRoute(
      path: AppRoutes.signInView,
      builder: (context, state) => BlocProvider(
          create: (context) => SignInCubit(), child: const SignInView())),
  GoRoute(
      path: AppRoutes.signUpView,
      builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(), child: const SignUpView())),
  GoRoute(
      path: AppRoutes.homeView, builder: (context, state) => const HomeView()),
  GoRoute(
      path: AppRoutes.forgetPasswordView,
      builder: (context, state) => BlocProvider(
          create: (context) => SignInCubit(),
          child: const ForgetPasswordView())),
]);
