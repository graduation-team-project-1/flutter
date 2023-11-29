import 'package:app/core/resource/string_manage.dart';
import 'package:app/features/splash/view/splash_view.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String splashScreen = '/';
}

class RouteGenerator {
  static Route<dynamic> getScreen(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteManager.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashView());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringManager.notFound),
      ),
      body: const Center(
        child: Text(StringManager.notFound),
      ),
    );
  }
}
