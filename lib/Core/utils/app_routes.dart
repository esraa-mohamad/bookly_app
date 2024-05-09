import 'package:bookly/Features/home/presentation/views/home.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {

  static const homeViewRoutes = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewRoutes,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}