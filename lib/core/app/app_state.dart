import 'package:flutter_riverpod/legacy.dart';
import 'package:token_manage_apk/core/app/app_state_notifier.dart';

final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>(
  (ref) => AppStateNotifier(),
);
