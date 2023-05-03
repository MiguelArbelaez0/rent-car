import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_car/providers/car_provider.dart';
import 'package:rent_car/widgets/container.dart';
import '../../models/car_model.dart';
import 'list_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedContainer = -1;

//   void _onContainerTap(int index) {
//     setState(() {
//       _selectedContainer = index;
//     });
//   }

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
//                 return CustomContainer(
//                   height: 59,
//                   width: 59,
//                   margin: EdgeInsets.only(left: 31, right: 17, top: 111),
//                   color: Colors.black,
//                   onTap: () {
//                     _onContainerTap(index);
//                   },
//                 );
//               },
//             ),
//           ),
//           if (_selectedContainer >= 0)
//             Expanded(
//               child: ListView.builder(
//                 itemCount: 5,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text('Item $index'),
//                   );
//                 },
//               ),
//             ),
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
  CarListProvider _carListProvider = CarListProvider();

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
              itemCount: 3,
              itemBuilder: (context, index) {
                String brand = '';
                if (index == 0) {
                  brand = 'Toyota';
                }
                return CustomContainer(
                  height: 59,
                  width: 59,
                  margin: EdgeInsets.only(left: 31, right: 17, top: 111),
                  color: Colors.black,
                  onTap: () {
                    setState(() {
                      _selectedBrand = brand;
                    });
                  },
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Cars',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
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
