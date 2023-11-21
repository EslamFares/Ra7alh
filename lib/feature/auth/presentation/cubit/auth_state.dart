class AuthState {}

class AuthInitial extends AuthState {}

class SignUpShowPasswordState extends AuthState {}

class SignUpAgreeTermsConditionState extends AuthState {}

class SignUpLoadingState extends AuthState {}

class SignUpSuccesState extends AuthState {}

class SignUpFailState extends AuthState {
  final String errMsg;

  SignUpFailState({required this.errMsg});
}
