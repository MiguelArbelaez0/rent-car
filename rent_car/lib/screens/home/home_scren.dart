import 'package:flutter/material.dart';

import 'package:rent_car/providers/car_provider.dart';
import 'package:rent_car/widgets/container.dart';
import '../../models/car_model.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final CarListProvider _carListProvider = CarListProvider();

//   String _selectedBrand = '';
//   String _selectedBrandFord = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 200,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: 3,
//               itemBuilder: (context, index) {
//                 String brand = '';
//                 if (index == 0) {
//                   brand = 'Toyota';
//                 } else if (index == 1) {
//                   brand = 'Ford';
//                 }
//                 return CustomContainer(
//                   height: 59,
//                   width: 59,
//                   margin: EdgeInsets.only(left: 31, right: 17, top: 111),
//                   color: Colors.grey.shade300,
//                   onTap: () {
//                     setState(() {
//                       if (brand == 'Toyota') {
//                         _selectedBrand = brand;
//                       } else if (brand == 'Ford') {
//                         _selectedBrandFord = brand;
//                       }
//                     });
//                   },
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 11),
//           Text(
//             'Toyota Cars',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _carListProvider.getCarsByBrand(_selectedBrand).length,
//               itemBuilder: (context, index) {
//                 Car car =
//                     _carListProvider.getCarsByBrand(_selectedBrand)[index];
//                 return ListTile(
//                   title: Text(car.model),
//                   subtitle: Text(car.pricePerDay.toString()),
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 11),
//           Text(
//             'Ford Cars',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount:
//                   _carListProvider.getCarsByBrand(_selectedBrandFord).length,
//               itemBuilder: (context, index) {
//                 Car car =
//                     _carListProvider.getCarsByBrand(_selectedBrandFord)[index];
//                 return ListTile(
//                   title: Text(car.model),
//                   subtitle: Text(car.pricePerDay.toString()),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
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
          Expanded(
            child: ListView.builder(
              itemCount: _carListProvider.getCarsByBrand(_selectedBrand).length,
              itemBuilder: (context, index) {
                Car car =
                    _carListProvider.getCarsByBrand(_selectedBrand)[index];
                return ListTile(
                  title: Text(car.model),
                  subtitle: Text(car.pricePerDay.toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
