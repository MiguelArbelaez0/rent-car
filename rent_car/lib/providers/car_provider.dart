import 'package:flutter/material.dart';

import '../models/brand_cars.dart';
import '../models/car_model.dart';

class CarListProvider extends ChangeNotifier {
  List<Car> getCarsByBrand(String brand) {
    if (brand == 'Toyota') {
      return ToyotaCars.cars;
    } else if (brand == 'Ford') {
      return FordCars.cars;
    } else if (brand == 'Chevrolet') {
      return ChevroletCars.cars;
    } else {
      return [];
    }
  }
}
