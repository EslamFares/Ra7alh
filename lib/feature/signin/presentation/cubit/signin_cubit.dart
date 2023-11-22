import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ra7alh/feature/signin/presentation/cubit/signin_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SigninInitial());
  static SignInCubit get(context) => BlocProvider.of(context);
  //==============

  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  var signInFormKey = GlobalKey<FormState>();
  //-------
  bool ispass = true;
  changeShowPassword() {
    ispass = !ispass;
    emit(SignInShowPasswordState());
  }

  signInWithEmailAndPassword() async {}
}
