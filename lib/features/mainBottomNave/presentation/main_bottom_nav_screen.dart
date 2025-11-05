// lib/features/mainBottomNave/presentation/main_bottom_nav_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:token_manage_apk/core/constants/app_icons.dart';
import 'package:token_manage_apk/l10n/app_localizations.dart';
import '../../../core/app/app_env.dart';
import '../../personalMainScreen/presentation/personal_main_screen.dart';
import '../../homeScreen/presentation/home_main_screen.dart';
import '../main_bottom_nav_provider.dart';

class MainBottomNavScreen extends ConsumerWidget {
  final Environment environment;
  const MainBottomNavScreen({super.key, required this.environment});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(mainNavIndexProvider);

    final pages = [
      HomeMainScreen(environment: environment),
      const PersonalScreen(),
    ];

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) =>
            ref.read(mainNavIndexProvider.notifier).changeTab(index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(AppIcons.home),
            label: AppLocalizations.of(context)!.homeTitle,
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.profile),
            label: AppLocalizations.of(context)!.profileTitle,
          ),
        ],
      ),
    );
  }
}
