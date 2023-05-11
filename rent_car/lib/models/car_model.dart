import 'detail_car.dart';

class Car {
  final String brand;
  final String model;
  final double pricePerDay;
  final String? image;
  final CarDetail carDetail;

  Car({
    this.image,
    required this.brand,
    required this.model,
    required this.pricePerDay,
    required this.carDetail,
  });
}
