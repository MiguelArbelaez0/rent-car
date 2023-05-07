import 'detail_car.dart';

class Car {
  final String brand;
  final String model;
  final double pricePerDay;
  final CarDetail carDetail;

  Car({
    required this.brand,
    required this.model,
    required this.pricePerDay,
    required this.carDetail,
  });
}
