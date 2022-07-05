import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/bloc/login_event.dart';
import 'package:food/bloc/login_states.dart';

class LoginBLoc extends Bloc<LoginEvent, LoginState> {
  LoginBLoc() : super(loginInitialState()) {
    on<loginTextChangedEvent>((event, emit) {
      if (EmailValidator.validate(event.emailValue) == false) {
        emit(loginErorState('Invalid Email, Please enter correct one'));
      } else if (event.passwordValue.length < 8) {
        emit(loginErorState('Invalid Password'));
      } else {
        emit(loginValidState());
      }
    });

    on<loginSubmittedEvent>((event, emit) {
      emit(loginLoadingState());
    });
  }
}
