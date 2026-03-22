import 'package:bitnaro/common/utils/routes/app_routes.dart';
import 'package:bitnaro/presentation/auth/view/login_view.dart';
import 'package:bitnaro/presentation/auth/view/signup_view.dart';
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
      GoRoute(
        path: AppRoutes.login,
        name: AppRoutes.login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRoutes.signUp,
        name: AppRoutes.signUp,
        builder: (context, state) => const SignupView(),
      ),
    ],
  );
}
