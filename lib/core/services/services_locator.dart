import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void getItSetup() {
  // getIt.registerSingleton<ApiService>(ApiService(Dio()));
}
//? in main
  // WidgetsFlutterBinding.ensureInitialized();
  // getItSetup();
  //? use
  //await getIt<AppModel>().name(),