import 'package:flutter/material.dart';

abstract class AuthState {}

class InitialState extends AuthState {}

class LoginSucsessState extends AuthState {}

class LoginLoadingState extends AuthState {}

class LoginErrorState extends AuthState {
}
