import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:token_manage_apk/features/login/login_provider.dart';
import 'package:token_manage_apk/l10n/app_localizations.dart';
import 'package:token_manage_apk/shared/ui/text/app_text.dart';
import 'package:token_manage_apk/shared/ui/textField/app_text_field.dart';
import '../../../core/router/app_routes.dart';
import '../../../core/utils/responsive/responsive_utils.dart';
import '../../../shared/ui/animations/curvy_wave_animation.dart';
import '../../../shared/ui/button/app_button.dart';
import '../../../shared/ui/button/app_text_button.dart';
import '../../../shared/ui/card/glass_container.dart';
import '../../../shared/ui/text/text_type.dart';

class Sighnup extends ConsumerWidget {
  const Sighnup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginForm = ref.watch(loginProvider);
    final formWidth = ResponsiveUtils.loginContainerWidth(context);
    return Scaffold(
      body: Stack(
        children: [
          const CurvyWaveAnimation(),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: formWidth),
                child: GlassContainer(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppText(
                        text: AppLocalizations.of(context)!.signupTitle,
                        type: TextType.subHeader,
                      ),
                      const SizedBox(height: 8),
                      AppText(
                        text: AppLocalizations.of(context)!.signupSubtitle,
                        type: TextType.bodyText,
                      ),
                      const SizedBox(height: 24),
                      AppTextField(
                        label: AppLocalizations.of(context)!.emailLabel,
                        controller: loginForm.emailController,
                        keyboardType: TextInputType.emailAddress,
                        suffixIcon: const Icon(Icons.email),
                      ),
                      const SizedBox(height: 16),
                      AppTextField(
                        label: AppLocalizations.of(context)!.passwordLabel,
                        controller: loginForm.passwordController,
                        obscureText: true,
                        suffixIcon: const Icon(Icons.lock),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: AppText(
                              text: AppLocalizations.of(
                                context,
                              )!.alreadyHaveAccount,
                              type: TextType.bodyText,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          AppTextButton(
                            label: AppLocalizations.of(context)!.loginButton,
                            onPressed: () =>
                                context.pushReplacementNamed(AppRoutes.login),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      AppButton(
                        minWidth: formWidth,
                        label: AppLocalizations.of(context)!.signupButton,
                        onPressed: () => context.pushNamed(AppRoutes.otp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
