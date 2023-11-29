import 'package:app/core/resource/route_manager.dart';
import 'package:app/core/resource/string_manage.dart';
import 'package:app/core/resource/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp._app();

  static const MyApp _myApp = MyApp._app();

  factory MyApp.internal() => _myApp;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringManager.appName,
      theme: ThemeManager.themeData(),
      initialRoute: RouteManager.splashScreen,
      onGenerateRoute: RouteGenerator.getScreen,
    );
  }
}

// temporary
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Data"),
      ),
      body: const Center(
        child: Text("Home Data"),
      ),
    );
  }
}
