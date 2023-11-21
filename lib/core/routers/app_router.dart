import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/routers/routes.dart';
import 'package:ra7alh/core/services/services_locator.dart';
import 'package:ra7alh/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:ra7alh/feature/auth/presentation/views/sign_in/signin_view.dart';
import 'package:ra7alh/feature/auth/presentation/views/sign_up/signup_view.dart';
import 'package:ra7alh/feature/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'package:ra7alh/feature/splash/presentation/views/splash_view.dart';

final GoRouter appRouter = GoRouter(routes: [
  // GoRoute(path: "/", builder: (context, state) => const SplashView()),
  GoRoute(
      path: "/",
      builder: (context, state) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: const SignUpView(),
          )),
  GoRoute(
      path: Routes.onboardingView,
      builder: (context, state) => const OnboardingView()),
  GoRoute(
      path: Routes.signUpView,
      builder: (context, state) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: const SignUpView(),
          )),
  GoRoute(
      path: Routes.signInView,
      builder: (context, state) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: const SignInView(),
          )),
]);
