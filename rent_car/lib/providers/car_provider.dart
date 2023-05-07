import 'package:flutter/material.dart';
import 'package:rent_car/uses%20cases/get_cars_by_brand.dart';

import '../models/car_model.dart';
import '../uses cases/send_message_whatsap.dart';

class CarListProvider extends ChangeNotifier {
  List<Car> getCarsByBrand(String brand) {
    final GetCarsUseCase getCarsUseCase = GetCarsUseCase();

    return getCarsUseCase.invoke(brand);
  }

  Future<void> sendWhatsAppMessage(Car car) async {
    final SendWhatsAppUseCase sendWhatsAppUseCase = SendWhatsAppUseCase();
    try {
      await sendWhatsAppUseCase.sendWhatsAppMessage(
        "Car Booking: ${car.brand} ${car.model} ",
        "3103971727",
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
