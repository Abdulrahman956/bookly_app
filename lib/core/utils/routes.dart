import 'package:bookly_app/feature/home/presentation/views/book_detials_view.dart';
import 'package:bookly_app/feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/feature/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kHomeView = '/homview';
  static const kDetailsView = '/detailsiew';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRoutes.kDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
