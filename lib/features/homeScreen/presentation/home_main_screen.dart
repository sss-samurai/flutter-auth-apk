import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:token_manage_apk/core/app/app_env.dart';
import 'package:token_manage_apk/features/homeScreen/home_screen_provider.dart';

import '../../../core/constants/app_icons.dart';
import '../../../shared/ui/header/profile_header.dart';
import '../../../shared/ui/icon/app_icon.dart';

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
            ProfileHeader(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRcaYv7qg0hxUBeEjRTE-orhFk3WXlC4o7ZQ&s',
              name: 'John Doe',
              endIcon: IconHolder(
                icon: AppIcons.notification,
                notificationCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
