import 'package:aether_fit/core/theme/app_theme.dart';
import 'package:aether_fit/data/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.customtheme,
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.customtheme,
      routerConfig: AppRoutes.approute,
      debugShowCheckedModeBanner: false,
    );
  }
}
