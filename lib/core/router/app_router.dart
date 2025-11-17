import 'package:go_router/go_router.dart';
import 'package:token_manage_apk/core/app/app_env.dart';
import 'package:token_manage_apk/core/router/app_routes.dart';
import 'package:token_manage_apk/features/mainBottomNave/presentation/main_bottom_nav_screen.dart';

import '../../features/login/presentation/login.dart';
import '../../features/otp/presentation/otp.dart';
import '../../features/productDetail/presentation/product_detail.dart';
import '../../features/searchAndFilter/presentation/search_and_filter.dart';
import '../../features/signup/presentation/sighnup.dart';
import '../../shared/ui/screen/screen_with_header.dart';

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
        name: AppRoutes.productDetails,
        path: AppRoutes.productDetailsPath,
        builder: (context, state) {
          final productId = state.extra as String;
          return ScreenWithHeader(
            title: AppRoutes.productDetailsName,
            child: ProductDetail(productId: productId),
          );
        },
      ),
      GoRoute(
        name: AppRoutes.login,
        path: AppRoutes.loginPath,
        builder: (context, state) =>
            ScreenWithHeader(title: AppRoutes.loginName, child: Login()),
      ),
      GoRoute(
        name: AppRoutes.signup,
        path: AppRoutes.signupPath,
        builder: (context, state) =>
            ScreenWithHeader(title: AppRoutes.sighnupName, child: Sighnup()),
      ),
      GoRoute(
        name: AppRoutes.otp,
        path: AppRoutes.otpPath,
        builder: (context, state) =>
            ScreenWithHeader(title: AppRoutes.otpName, child: Otp()),
      ),
      GoRoute(
        name: AppRoutes.searchAndFilter,
        path: AppRoutes.searchAndFilterPath,
        builder: (context, state) => ScreenWithHeader(
          title: AppRoutes.searchAndFilterName,
          child: SearchAndFilter(),
        ),
      ),
    ],
  );
}
