import 'package:aether_fit/features/pages/activity_page.dart';
import 'package:aether_fit/features/pages/homepage.dart';
import 'package:aether_fit/features/pages/marathon_page.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final GoRouter approute = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(path: '/home', builder: (context, state) => const Homepage()),
      GoRoute(path: '/act', builder: (context, state) => const ActivityPage()),
      GoRoute(
        path: '/marathon',
        builder: (context, state) => const MarathonPage(),
      ),
    ],
  );
}
