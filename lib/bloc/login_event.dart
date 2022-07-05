abstract class LoginEvent {}

class loginTextChangedEvent extends LoginEvent {
  final String emailValue;
  final String passwordValue;
  loginTextChangedEvent(this.emailValue, this.passwordValue);
}

class loginSubmittedEvent extends LoginEvent {
  final String email;
  final String password;
  loginSubmittedEvent(this.email, this.password);
}
