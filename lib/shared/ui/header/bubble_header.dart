import 'package:flutter/material.dart';
import 'package:token_manage_apk/l10n/app_localizations.dart';
import 'package:token_manage_apk/shared/ui/button/app_button.dart';
import 'package:token_manage_apk/shared/ui/button/app_text_button.dart';
import '../text/app_text.dart';
import '../text/text_type.dart';

class BubbleHeader extends StatelessWidget {
  final VoidCallback onLogin;
  final VoidCallback onSignup;
  final VoidCallback onLater;

  const BubbleHeader({
    super.key,
    required this.onLogin,
    required this.onSignup,
    required this.onLater,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: colorScheme.shadow.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                AppButton(
                  label: AppLocalizations.of(context)!.loginTitle,
                  onPressed: onLogin,
                  isPrimary: true,
                  minWidth: 100,
                ),
                const SizedBox(width: 12),
                AppButton(
                  label: AppLocalizations.of(context)!.signupTitle,
                  onPressed: onSignup,
                  minWidth: 110,
                  isPrimary: false,
                ),
                const Spacer(),
                AppTextButton(
                  label: AppLocalizations.of(context)!.laterTitle,
                  onPressed: onLater,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
