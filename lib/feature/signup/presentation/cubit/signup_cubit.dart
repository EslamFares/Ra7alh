import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ra7alh/core/utils/app_constants.dart';
import 'package:ra7alh/feature/signup/presentation/cubit/signup_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(AuthInitial());
  static SignUpCubit get(context) => BlocProvider.of(context);
  //=============================================================
  final TextEditingController firstNameCtrl = TextEditingController();
  final TextEditingController lastNameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  var signUpFormKey = GlobalKey<FormState>();
  //-------
  bool ispass = true;
  void changeShowPassword() {
    ispass = !ispass;
    emit(SignUpShowPasswordState());
  }

  bool isagreeTermsCondition = true;
  void changeAgreeTermsCondition(value) {
    isagreeTermsCondition = value;
    emit(SignUpAgreeTermsConditionState());
  }

  //-------------------
  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailCtrl.text,
        password: passwordCtrl.text,
      );
      await addUserProfileDataToFireStore();
      await verifyEmail();
      emit(SignUpSuccesState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailState(errMsg: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailState(
            errMsg: 'The account already exists for that email.'));
      } else {
        emit(SignUpFailState(errMsg: '${e.code} ... ${e.message}'));
      }
    } catch (e) {
      emit(SignUpFailState(errMsg: e.toString()));
    }
  }

  //------------- verify Email--------------
  Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  //-------------------- add User Profile Data To FireStore ---------
  Future<void> addUserProfileDataToFireStore() async {
    CollectionReference users =
        FirebaseFirestore.instance.collection(AppConsts.userCollectionName);
    await users.add({
      'email': emailCtrl.text,
      'first_name': firstNameCtrl.text,
      'last_name': lastNameCtrl.text,
    });
  }
}
