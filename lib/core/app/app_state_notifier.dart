import 'dart:ui';

import 'package:flutter_riverpod/legacy.dart';

class AppState {
  final Locale locale;

  AppState({required this.locale});

  AppState copyWith({Locale? locale}) {
    return AppState(locale: locale ?? this.locale);
  }
}

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier() : super(AppState(locale: const Locale('en')));
  void changeLocale(Locale locale) {
    state = state.copyWith(locale: locale);
  }
}
