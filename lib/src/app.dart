import 'package:flutter/material.dart';
import 'package:lib_core/lib_core.dart';
import 'package:micro_calculator/calculator_module.dart';
import 'package:micro_home/home_module.dart';

class App {
  static MaterialApp createApp() {
    final List<IModule> modules = [
      CalculatorModule(),
      HomeModule(),
    ];

    final Map<String, Widget Function(BuildContext)> pages = {};
    for (final module in modules) {
      pages.addAll(module.pages);
    }

    return MaterialApp(
      navigatorKey: globalNavigator,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      routes: pages,
      initialRoute: '/',
    );
  }
}
