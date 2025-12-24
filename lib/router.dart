
import 'package:go_router/go_router.dart';
import 'package:gorunapp_live/MainHomePage.dart';
import 'package:gorunapp_live/site-go-octo-eureka/GoOctoEureka_home.dart';

final GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainHomePage(),
    ),
    GoRoute(
      path: '/gofindtransit',
      builder: (context, state) => const GooctoeurekaHome(),
    ),
  ],
);