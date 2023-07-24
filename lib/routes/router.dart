import 'package:go_router/go_router.dart';
import 'package:qrcode/pages/login_page.dart';

import '/pages/home_page.dart';

part 'route_name.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: Routes.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/login',
      name: Routes.login,
      builder: (context, state) => const LoginPage(),
    ),
  ],
);
