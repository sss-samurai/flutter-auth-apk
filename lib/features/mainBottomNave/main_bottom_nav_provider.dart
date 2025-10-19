import 'package:flutter_riverpod/legacy.dart';

final mainNavIndexProvider = StateNotifierProvider<MainNavIndexNotifier, int>(
  (ref) => MainNavIndexNotifier(),
);

class MainNavIndexNotifier extends StateNotifier<int> {
  MainNavIndexNotifier() : super(0);

  void changeTab(int index) {
    state = index;
  }
}
