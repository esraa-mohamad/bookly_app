import 'package:bookly/Features/home/presentation/views/home.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_details_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {

  static const homeViewRoutes = '/homeView';
  static const bookDetailsViewRout = '/detailsView';
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
      GoRoute(
        path: bookDetailsViewRout,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}