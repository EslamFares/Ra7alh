import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ra7alh/feature/auth/presentation/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit get(context) => BlocProvider.of(context);
  //============
  bool click = false;
  void changeClick() {
    click = !click;
    emit(AuthClickState());
  }
}
