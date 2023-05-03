import 'package:flutter/material.dart';

import 'package:rent_car/providers/car_provider.dart';
import 'package:rent_car/widgets/container.dart';
import '../../models/car_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarListProvider _carListProvider = CarListProvider();

  String _selectedBrand = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                String brand = '';
                if (index == 0) {
                  brand = 'Toyota';
                } else if (index == 1) {
                  brand = 'Ford';
                }
                return CustomContainer(
                  height: 59,
                  width: 59,
                  margin: EdgeInsets.only(left: 31, right: 17, top: 111),
                  color: _selectedBrand == brand
                      ? Colors.blue
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
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
              scrollDirection: Axis.horizontal, // Establecer scroll horizontal
              itemCount: _carListProvider.getCarsByBrand(_selectedBrand).length,
              itemBuilder: (context, index) {
                Car car =
                    _carListProvider.getCarsByBrand(_selectedBrand)[index];
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 27, right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      height: 260,
                      width: 198,
                      child: Column(
                        children: [
                          Text(car.model),
                          Text(car.pricePerDay.toString()),
                        ],
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
