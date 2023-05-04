import 'package:rent_car/data/local_data_sourece.dart';

import '../models/car_model.dart';

class GetCarsUseCase {
  LocalDataSoureToyota localDataSoureToyota = LocalDataSoureToyota();

  LocalDataSoureFord localDataSoureFord = LocalDataSoureFord();

  LocalDataSoureChevrolet localDataSoureChevrolet = LocalDataSoureChevrolet();
  List<Car> invoke(String brand) {
    if (brand == "Toyota") {
      return localDataSoureToyota.getCars();
    } else if (brand == "Ford") {
      return localDataSoureFord.getCars();
    } else if (brand == "Chevrolet") {
      return localDataSoureChevrolet.getCars();
    }
    return [];
  }
}
