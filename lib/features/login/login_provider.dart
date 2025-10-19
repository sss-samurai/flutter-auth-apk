import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:token_manage_apk/features/login/controllers/login.dart';

/// Holds the login form state

/// Provider for the login state
final loginProvider = Provider<LoginState>((ref) {
  final state = LoginState(
    emailController: TextEditingController(),
    passwordController: TextEditingController(),
  );

  // Dispose when provider is no longer used
  ref.onDispose(() => state.dispose());

  return state;
});
