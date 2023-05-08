import 'package:flutter/material.dart';

import 'package:rent_car/providers/car_provider.dart';
import 'package:rent_car/widgets/container.dart';
import '../../models/car_model.dart';
import '../../models/detail_car.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarListProvider _carListProvider = CarListProvider();

  String _selectedBrand = 'bmw';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                String brand = '';
                if (index == 0) {
                  brand = 'Toyota';
                } else if (index == 1) {
                  brand = 'Ford';
                } else if (index == 2) {
                  brand = 'Chevrolet';
                }
                return Column(
                  children: [
                    CustomContainer(
                      height: 59,
                      width: 59,
                      margin: EdgeInsets.only(left: 31, right: 17, top: 111),
                      color: _selectedBrand == brand
                          ? Colors.white
                          : Colors.grey.shade300,
                      onTap: () {
                        setState(() {
                          _selectedBrand = brand;
                        });
                      },
                      child: Center(
                        child: Text(
                          brand,
                          style: TextStyle(
                            color: _selectedBrand == brand
                                ? Colors.black
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      brand,
                      style: TextStyle(
                        color: _selectedBrand == brand
                            ? Colors.black
                            : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 11),
          Text(
            'Cars',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _carListProvider.getCarsByBrand(_selectedBrand).length,
              itemBuilder: (context, index) {
                Car car =
                    _carListProvider.getCarsByBrand(_selectedBrand)[index];
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "detail",
                          arguments: CarDetail(
                            brand: car.brand,
                            model: car.model,
                            description: car.carDetail.description,
                            pricePerDay: car.pricePerDay,
                            specifications: car.carDetail.specifications,
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(car.image ?? ""),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                        ),
                        margin: EdgeInsets.only(left: 27, right: 14),
                        height: 260,
                        width: 198,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                  left: 21, right: 108, top: 195),
                              child: Text(
                                car.model,
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(left: 21, right: 99),
                              child:
                                  Text("${car.pricePerDay.toString()} / day"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
