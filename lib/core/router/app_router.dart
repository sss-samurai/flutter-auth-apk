import 'package:go_router/go_router.dart';
import 'package:token_manage_apk/core/app/app_env.dart';
import 'package:token_manage_apk/core/router/app_routes.dart';
import 'package:token_manage_apk/features/mainBottomNave/presentation/main_bottom_nav_screen.dart';

import '../../features/productDetail/presentation/product_detail.dart';
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
    ],
  );
}
