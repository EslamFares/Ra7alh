abstract class SignInState {}

final class SigninInitial extends SignInState {}

class SignInShowPasswordState extends SignInState {}

class SignInAgreeTermsConditionState extends SignInState {}

class SignInLoadingState extends SignInState {}

class SignInSuccesState extends SignInState {}

class SignInFailState extends SignInState {
  final String errMsg;

  SignInFailState({required this.errMsg});
}
