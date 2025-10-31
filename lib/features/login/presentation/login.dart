import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:token_manage_apk/features/login/login_provider.dart';
import 'package:token_manage_apk/l10n/app_localizations.dart';
import 'package:token_manage_apk/shared/ui/textField/app_text_field.dart';

import '../../../core/router/app_routes.dart';
import '../../../shared/ui/button/app_button.dart';

class Login extends ConsumerWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final loginForm = ref.watch(loginProvider);

    final screenWidth = MediaQuery.of(context).size.width;

    final formWidth = screenWidth > 600 ? 400.0 : screenWidth * 0.9;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: formWidth),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppTextField(
                  label: AppLocalizations.of(context)!.emailLabel,
                  controller: loginForm.emailController,
                  hintText: AppLocalizations.of(context)!.emailHint,
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: const Icon(Icons.email),
                ),
                const SizedBox(height: 16),
                AppTextField(
                  label: AppLocalizations.of(context)!.passwordLabel,
                  controller: loginForm.passwordController,
                  hintText: AppLocalizations.of(context)!.passwordHint,
                  obscureText: true,
                  suffixIcon: const Icon(Icons.lock),
                ),
                const SizedBox(height: 16),
                AppButton(
                  minWidth: formWidth,
                  label: AppLocalizations.of(context)!.loginTitle,
                  onPressed: () => print(formWidth),
                ),
                const SizedBox(height: 16),
                AppButton(
                  minWidth: formWidth,
                  label: AppLocalizations.of(context)!.skipTitle,
                  onPressed: () => context.goNamed(AppRoutes.home),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
