import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/car_model.dart';
import '../models/detail_car.dart';
import '../providers/car_provider.dart';

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
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 42,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              color: Colors.grey,
              height: 100.0,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              margin: EdgeInsets.only(left: 31, right: 31),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "${car.brand} ${car.model}",
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    constraints: BoxConstraints(
                      minHeight: 100,
                    ),
                    child: Expanded(
                      child: SingleChildScrollView(
                        child: Text(
                          "\n${carDetail.description}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 190,
            ),
            Container(
              height: 299,
              width: 390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Specifications:\n${carDetail.specifications.join("\n")}",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
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
                            color: Colors.black),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 24),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.red)),
                              onPressed: () async {
                                await context
                                    .read<CarListProvider>()
                                    .sendWhatsAppMessage(car);
                              },
                              child: Text("Booking"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
