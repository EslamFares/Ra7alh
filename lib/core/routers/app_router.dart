import 'package:go_router/go_router.dart';
import 'package:ra7alh/feature/splash/presentation/view/splash_view.dart';

final GoRouter appRouter = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const SplashView()),
]);
