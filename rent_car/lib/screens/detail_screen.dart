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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 96),
            color: Colors.amber,
            width: 680,
            height: 230,
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            margin: EdgeInsets.only(left: 31, right: 31),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 282),
                  child: Text(
                    "${car.brand} ${car.model}",
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "\n${carDetail.description}",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 21,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 21,
                  ),
                  Text(
                    "Specifications:\n${carDetail.specifications.join("\n")}",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 31,
                      ),
                      Text(
                        "\$ ${car.pricePerDay}  /  day ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(22),
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 15,
                            left: 24,
                          ),
                          width: 189,
                          height: 59,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.red)),
                            onPressed: () {},
                            child: Text("Booking"),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
