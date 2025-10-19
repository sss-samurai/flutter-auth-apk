import 'package:flutter/material.dart';

class LoginState {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  LoginState({required this.emailController, required this.passwordController});

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
}
