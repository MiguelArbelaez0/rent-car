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
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(7),
            ),
            width: 36,
            height: 37,
            margin: EdgeInsets.only(top: 70, right: 280),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "home");
                },
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 25,
                )),
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
                    height: 150,
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
                            onPressed: () async {
                              await context
                                  .read<CarListProvider>()
                                  .sendWhatsAppMessage(car);
                            },
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
