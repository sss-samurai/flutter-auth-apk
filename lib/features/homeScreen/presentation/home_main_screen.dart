import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:token_manage_apk/core/app/app_env.dart';
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
          ],
        ),
      ),
    );
  }
}
