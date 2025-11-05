import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:token_manage_apk/features/homeScreen/data/auth_header.dart';
import 'package:token_manage_apk/features/homeScreen/data/home_screen_controller.dart';
import 'package:token_manage_apk/features/homeScreen/data/home_screen_data.dart';

final homeScreenProvider = Provider<AuthHeader>((ref) {
  return AuthHeader();
});

final homeScreenDataProvider =
    StateNotifierProvider<HomeScreenController, HomeScreenData>((ref) {
      return HomeScreenController();
    });
