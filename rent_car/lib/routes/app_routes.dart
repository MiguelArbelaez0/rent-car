import 'package:flutter/material.dart';
import 'package:rent_car/models/detail_car.dart';
import 'package:rent_car/screens/splash/splash_screen.dart';

import '../models/car_model.dart';
import '../screens/detail_screen.dart';
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
      case "detail":
        if (settings.arguments is Car) {
          Car car = settings.arguments as Car;
          return MaterialPageRoute(
            builder: (_) => DetailScreen(
              car: car,
              carDetail: car.carDetail,
            ),
          );
        } else if (settings.arguments is CarDetail) {
          CarDetail carDetail = settings.arguments as CarDetail;
          return MaterialPageRoute(
            builder: (_) => DetailScreen(
              car: Car(
                brand: carDetail.brand,
                model: carDetail.model,
                pricePerDay: carDetail.pricePerDay,
                carDetail: carDetail,
              ),
              carDetail: carDetail,
            ),
          );
        }
        break;
    }
    return MaterialPageRoute(builder: (_) => HomeScreen());
  }
}
