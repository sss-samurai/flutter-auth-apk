import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:token_manage_apk/core/app/app_env.dart';
import 'package:token_manage_apk/core/app/app_state.dart';
import 'package:token_manage_apk/features/homeScreen/home_screen_provider.dart';
import 'package:token_manage_apk/shared/ui/header/bubble_header.dart';

class HomeMainScreen extends ConsumerWidget {
  final Environment? environment;

  const HomeMainScreen({super.key, this.environment});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(homeMainScreenControllerProvider);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            BubbleHeader(
              onLogin: () => controller.goToLogin(context),
              onSignup: () => controller.goToSignup(context),
              onLater: () => controller.maybeLater(context),
            ),
            DropdownButton<Locale>(
              value: ref.watch(appStateProvider).locale,
              items: const [
                DropdownMenuItem(value: Locale('en'), child: Text('English')),
                DropdownMenuItem(value: Locale('ta'), child: Text('Tamil')),
                DropdownMenuItem(value: Locale('hi'), child: Text('Hindi')),
                DropdownMenuItem(value: Locale('ml'), child: Text('Malayalam')),
              ],
              onChanged: (Locale? locale) {
                if (locale != null) {
                  ref.read(appStateProvider.notifier).changeLocale(locale);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
