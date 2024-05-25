import 'package:bookly/Core/utils/app_routes.dart';
import 'package:bookly/Core/utils/service_locator.dart';
import 'package:bookly/Features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/Features/home/presentation/managers/featured_book_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/managers/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBook(),
        ),
        BlocProvider(
          create: (context) =>NewestBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ConstantsColor.primaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}

