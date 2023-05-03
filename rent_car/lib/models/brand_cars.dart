import 'car_model.dart';

class ToyotaCars {
  static List<Car> cars = [
    Car(brand: 'Toyota', model: 'Corolla', pricePerDay: 50.0),
    Car(brand: 'Toyota', model: 'Camry', pricePerDay: 60.0),
    Car(brand: 'Toyota', model: 'Rav4', pricePerDay: 70.0),
  ];
}

class FordCars {
  static List<Car> cars = [
    Car(brand: 'Ford', model: 'Mustang', pricePerDay: 80.0),
    Car(brand: 'Ford', model: 'Explorer', pricePerDay: 90.0),
    Car(brand: 'Ford', model: 'F-150', pricePerDay: 100.0),
  ];
}
