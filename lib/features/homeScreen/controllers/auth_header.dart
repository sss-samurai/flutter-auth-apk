import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:token_manage_apk/core/router/app_routes.dart';

class AuthHeader {
  void goToLogin(BuildContext context) {
    context.goNamed(AppRoutes.login);
  }

  void goToSignup(BuildContext context) {
    context.goNamed(AppRoutes.signup);
  }

  void maybeLater(BuildContext context) {
    context.pop();
  }
}
