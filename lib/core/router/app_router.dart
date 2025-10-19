import 'package:go_router/go_router.dart';
import 'package:token_manage_apk/core/app/app_env.dart';
import 'package:token_manage_apk/core/router/app_routes.dart';
import 'package:token_manage_apk/features/login/presentation/login.dart';
import 'package:token_manage_apk/features/mainBottomNave/presentation/main_bottom_nav_screen.dart';

GoRouter setupRouter(Environment environment) {
  return GoRouter(
    initialLocation: AppRoutes.homePath,
    routes: [
      GoRoute(
        name: AppRoutes.home,
        path: AppRoutes.homePath,
        builder: (context, state) =>
            MainBottomNavScreen(environment: environment),
      ),
      GoRoute(
        name: AppRoutes.login,
        path: AppRoutes.loginPath,
        builder: (context, state) => const Login(),
      ),
    ],
  );
}
