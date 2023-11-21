import 'package:get_it/get_it.dart';
import 'package:ra7alh/feature/auth/presentation/cubit/auth_cubit.dart';

final getIt = GetIt.instance;

void getItSetup() {
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
//? in main
  // WidgetsFlutterBinding.ensureInitialized();
  // getItSetup();
  //? use
  //await getIt<AppModel>(),
  // getIt<AuthCubit>()