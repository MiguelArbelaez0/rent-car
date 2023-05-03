import 'detail_car.dart';

class Car {
  final String brand;
  final String model;
  final double pricePerDay;
  final CarDetail carDetail; // Nueva instancia de CarDetail

  Car({
    required this.brand,
    required this.model,
    required this.pricePerDay,
    required this.carDetail, // Incluir como parámetro requerido
  });
}
