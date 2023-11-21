import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ra7alh/feature/auth/presentation/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit get(context) => BlocProvider.of(context);
  //=============================================================
  final TextEditingController firstNameCtrl = TextEditingController();
  final TextEditingController lastNameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  var signUpFormKey = GlobalKey<FormState>();
  //-------
  bool ispass = true;
  changeShowPassword() {
    ispass = !ispass;
    emit(SignUpShowPasswordState());
  }

  bool isagreeTermsCondition = true;
  changeAgreeTermsCondition(value) {
    isagreeTermsCondition = value;
    emit(SignUpAgreeTermsConditionState());
  }

  //-------------------
  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailCtrl.text,
        password: passwordCtrl.text,
      );
      emit(SignUpSuccesState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailState(errMsg: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailState(
            errMsg: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignUpFailState(errMsg: e.toString()));
    }
  }
}
