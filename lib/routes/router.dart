import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

import '/pages/home_page.dart';
import '/pages/login_page.dart';

part 'route_name.dart';

final router = GoRouter(
  redirect: (context, state) {
    FirebaseAuth auth = FirebaseAuth.instance;

    if (auth.currentUser == null) {
      return '/login';
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      name: Routes.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/login',
      name: Routes.login,
      builder: (context, state) => LoginPage(),
    ),
  ],
);
