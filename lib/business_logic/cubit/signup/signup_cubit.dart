import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  bool isVisible = true;
  IconData icon = Icons.visibility_off;

  changeVisible() {
    isVisible ? icon = Icons.visibility_off : icon = Icons.visibility;
    isVisible = !isVisible;

    emit(SignupInitial());
  }
}
