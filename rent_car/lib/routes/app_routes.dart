import 'package:flutter/material.dart';
import 'package:rent_car/screens/splash/splash_screen.dart';

import '../screens/home/home_scren.dart';

class RoutesApp {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case "splash":
        return MaterialPageRoute(builder: (_) => SplashScreen());

      case "home":
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }

    return MaterialPageRoute(builder: (_) => HomeScreen());
  }
}
