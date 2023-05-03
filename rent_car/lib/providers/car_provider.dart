import 'package:flutter/material.dart';

import '../models/car_model.dart';
import '../models/list_cars.dart';

class CarListProvider extends ChangeNotifier {
  List<Car> getCarsByBrand(String brand) {
    if (brand == 'Toyota') {
      return ToyotaCars.cars;
    } else {
      return [];
    }
  }
}
