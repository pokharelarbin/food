abstract class LoginState {}

class loginInitialState extends LoginState {}

class loginValidState extends LoginState {}

class loginLoadingState extends LoginState {}

class loginErorState extends LoginState {
  String errorMessage;
  loginErorState(this.errorMessage);
}
