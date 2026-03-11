import 'package:bitnaro/common/utils/routes/app_routes.dart';
import 'package:bitnaro/presentation/choose_account/view/choose_account_view.dart';
import 'package:bitnaro/presentation/splash/view/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouteConfig {
  AppRouteConfig._();
  static final GoRouter config = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.chooseAccount,
        name: AppRoutes.chooseAccount,
        builder: (context, state) => const ChooseAccountView(),
      ),
    ],
  );
}
