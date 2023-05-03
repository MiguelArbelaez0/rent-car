import 'package:flutter/material.dart';

import '../models/car_model.dart';
import '../models/detail_car.dart';

class DetailScreen extends StatelessWidget {
  final Car car;
  final CarDetail carDetail;

  const DetailScreen({
    Key? key,
    required this.car,
    required this.carDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${car.brand} ${car.model}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Description:\n${carDetail.description}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "Specifications:\n${carDetail.specifications.join("\n")}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Price per day: \$${car.pricePerDay}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
