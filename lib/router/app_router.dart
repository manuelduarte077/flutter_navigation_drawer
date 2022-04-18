import 'package:flutter/material.dart';
import 'package:navigation_drawer_challenge/utils/error_route.dart';
import 'package:navigation_drawer_challenge/views/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The route name is ${settings.name}');

    switch (settings.name) {
      case '/':
        return Home.route();
      case ProductDetailScreen.routeName:
        return ProductDetailScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => const ErrorRoutes(),
    );
  }
}
