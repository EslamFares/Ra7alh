import 'package:firebase_auth/firebase_auth.dart';
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

  signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailCtrl.text, password: passwordCtrl.text);
      emit(SignInSuccesState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailState(errMsg: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SignInFailState(errMsg: 'Wrong password provided for that user.'));
      } else {
        emit(SignInFailState(errMsg: '${e.code} ... ${e.message}'));
      }
    } catch (e) {
      emit(SignInFailState(errMsg: e.toString()));
    }
  }
}
