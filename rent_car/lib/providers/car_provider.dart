import 'package:flutter/material.dart';
import 'package:rent_car/uses%20cases/get_cars_by_brand.dart';

import '../models/car_model.dart';

class CarListProvider extends ChangeNotifier {
  List<Car> getCarsByBrand(String brand) {
    final GetCarsUseCase getCarsUseCase = GetCarsUseCase();

    return getCarsUseCase.invoke(brand);
  }
}
