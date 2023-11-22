import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void getItSetup() {
  // getIt.registerSingleton<SignUpCubit>(SignUpCubit());
}
//? in main
  // WidgetsFlutterBinding.ensureInitialized();
  // getItSetup();
  //? use
  //await getIt<AppModel>(),
  // getIt<AuthCubit>()