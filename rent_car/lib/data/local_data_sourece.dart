import 'package:rent_car/models/brand_cars.dart';

import '../models/car_model.dart';

class LocalDataSoureToyota {
  List<Car> getCars() {
    return ToyotaCars.cars;
  }
}

class LocalDataSoureFord {
  List<Car> getCars() {
    return FordCars.cars;
  }
}

class LocalDataSoureChevrolet {
  List<Car> getCars() {
    return ChevroletCars.cars;
  }
}
