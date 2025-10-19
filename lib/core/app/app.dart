import 'package:flutter/material.dart';
import 'package:token_manage_apk/l10n/app_localizations.dart';
import '../theme/app_theme.dart';
import 'app_env.dart';
import '../router/app_router.dart'; // your GoRouter setup

class MyApp extends StatelessWidget {
  final Environment environment;
  const MyApp({super.key, required this.environment});

  @override
  Widget build(BuildContext context) {
    final router = setupRouter(environment);

    return MaterialApp.router(
      title: 'Auth Flutter App',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
