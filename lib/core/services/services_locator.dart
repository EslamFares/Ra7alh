import 'package:get_it/get_it.dart';
import 'package:ra7alh/feature/signup/presentation/cubit/signup_cubit.dart';

final getIt = GetIt.instance;

void getItSetup() {
  getIt.registerSingleton<SignUpCubit>(SignUpCubit());
}
//? in main
  // WidgetsFlutterBinding.ensureInitialized();
  // getItSetup();
  //? use
  //await getIt<AppModel>(),
  // getIt<AuthCubit>()