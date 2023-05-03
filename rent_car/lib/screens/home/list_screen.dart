import 'package:flutter/material.dart';

import '../../models/car_model.dart';

class CarListScreen extends StatelessWidget {
  final List<Car> cars;

  const CarListScreen({Key? key, required this.cars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toyota Cars'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];
          return ListTile(
            title: Text(car.model),
            subtitle: Text(car.brand),
            trailing: Text(car.pricePerDay.toString()),
          );
        },
      ),
    );
  }
}
