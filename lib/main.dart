import 'package:bookly_app/feature/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/feature/home/presentation/manger/featured_book_cubit/cubit.dart';
import 'package:bookly_app/feature/home/presentation/manger/newest_book_cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/constants.dart';
import 'core/utils/routes.dart';
import 'core/utils/service_locator.dart';

void main() {
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedCubit(
            getIt.get<HomeServise>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestCubit(
            getIt.get<HomeServise>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
