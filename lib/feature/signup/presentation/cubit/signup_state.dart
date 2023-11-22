class SignUpState {}

class AuthInitial extends SignUpState {}

class SignUpShowPasswordState extends SignUpState {}

class SignUpAgreeTermsConditionState extends SignUpState {}

class SignUpLoadingState extends SignUpState {}

class SignUpSuccesState extends SignUpState {}

class SignUpFailState extends SignUpState {
  final String errMsg;

  SignUpFailState({required this.errMsg});
}
