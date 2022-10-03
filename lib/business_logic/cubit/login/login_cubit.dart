import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  bool isVisible = true;
  IconData icon = Icons.visibility_off;

  changeVisible() {
    isVisible ? icon = Icons.visibility : icon = Icons.visibility_off;
    isVisible = !isVisible;
    emit(LoginInitial());
  }
}
