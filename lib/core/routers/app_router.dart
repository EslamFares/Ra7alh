import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/routers/routes.dart';
import 'package:ra7alh/feature/auth/presentation/views/login/login_view.dart';
import 'package:ra7alh/feature/auth/presentation/views/sign_up/signup_view.dart';
import 'package:ra7alh/feature/onboarding/views/onboarding_view.dart';
import 'package:ra7alh/feature/splash/presentation/views/splash_view.dart';

final GoRouter appRouter = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const SplashView()),
  GoRoute(
      path: Routes.onboardingView,
      builder: (context, state) => const OnboardingView()),
  GoRoute(
      path: Routes.signUpView, builder: (context, state) => const SignUpView()),
  GoRoute(
      path: Routes.loginView, builder: (context, state) => const LoginView()),
]);
