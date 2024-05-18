import 'package:bookly/Features/home/presentation/views/home.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/search/presentation/view/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {

  static const homeViewRoutes = '/homeView';
  static const bookDetailsViewRout = '/detailsView';
  static const searchViewRout = '/searchView';
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
      GoRoute(
        path: searchViewRout,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}