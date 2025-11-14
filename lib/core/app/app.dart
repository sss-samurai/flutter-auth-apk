import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:token_manage_apk/core/app/app_state.dart';
import 'package:token_manage_apk/l10n/app_localizations.dart';
import '../constants/locales.dart';
import '../providers/loading_provider.dart';
import '../theme/app_theme.dart';
import 'app_env.dart';
import '../router/app_router.dart';
import '../widgets/app_loader.dart'; // <-- loader widget

class MyApp extends ConsumerWidget {
  final Environment environment;

  const MyApp({super.key, required this.environment});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = setupRouter(environment);
    final appState = ref.watch(appStateProvider);

    return MaterialApp.router(
      title: 'Auth Flutter App',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      locale: appState.locale,
      supportedLocales: AppLocales.supported,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        final isLoading = ref.watch(loadingProvider);
        return Stack(
          children: [
            child!,
            if (isLoading)
              const AbsorbPointer(absorbing: true, child: AppLoader()),
          ],
        );
      },
    );
  }
}
