import 'car_model.dart';
import 'detail_car.dart';

class ToyotaCars {
  static List<Car> cars = [
    Car(
        brand: 'Toyota',
        model: 'Corolla',
        pricePerDay: 50.0,
        carDetail: CarDetail(
          brand: 'Toyota',
          model: 'Corolla',
          description:
              'The 2022 Corolla is here. Embrace the style and sophistication of this iconic sedan.',
          pricePerDay: 50,
          specifications: [
            'Engine: 1.8L 4-cylinder',
            'Horsepower: 139 hp @ 6,100 RPM',
            'Torque: 126 lb-ft @ 3,900 RPM',
            'Transmission: Continuously Variable Transmission',
            'Top speed: 110 mph',
            'Acceleration: 0-60 mph in 8.5 seconds',
            'Fuel economy: 30 mpg city / 38 mpg highway'
          ],
        ),
        image: 'assets/corolla.png'),
    Car(
        brand: 'Toyota',
        model: 'Camry',
        pricePerDay: 60.0,
        carDetail: CarDetail(
          brand: 'Toyota',
          model: 'Camry',
          description:
              'The 2022 Camry is a perfect combination of style and performance.',
          pricePerDay: 60,
          specifications: [
            'Engine: 2.5L 4-cylinder',
            'Horsepower: 202 hp @ 6,600 RPM',
            'Torque: 182 lb-ft @ 4,400 RPM',
            'Transmission: 8-speed automatic',
            'Top speed: 135 mph',
            'Acceleration: 0-60 mph in 7.5 seconds',
            'Fuel economy: 28 mpg city / 39 mpg highway'
          ],
        ),
        image: 'assets/corolla.png'),
    Car(
        brand: 'Toyota',
        model: 'Rav4',
        pricePerDay: 70.0,
        carDetail: CarDetail(
          brand: 'Toyota',
          model: 'Rav4',
          description:
              'The 2022 RAV4 is designed to help you make the most of every moment.',
          pricePerDay: 70,
          specifications: [
            'Engine: 2.5L 4-cylinder',
            'Horsepower: 203 hp @ 6,600 RPM',
            'Torque: 184 lb-ft @ 5,000 RPM',
            'Transmission: 8-speed automatic',
            'Top speed: 120 mph',
            'Acceleration: 0-60 mph in 8 seconds',
            'Fuel economy: 27 mpg city / 35 mpg highway'
          ],
        ),
        image: 'assets/RAV4.png'),
  ];
}

class FordCars {
  static List<Car> cars = [
    Car(
      brand: 'Ford',
      model: 'Escape',
      pricePerDay: 80.0,
      carDetail: CarDetail(
        brand: 'Ford',
        model: 'Escape',
        description:
            'The Ford Escape is a compact crossover SUV produced by the Ford Motor Company since 2000. ',
        pricePerDay: 80,
        specifications: [
          'Engine: 1.5 L EcoBoost 4-cylinder engine',
          'Horsepower: 181 hp @ 6,000 RPM',
          'Torque: 190 lb-ft @ 3,000 RPM',
          'Transmission: 8-speed automatic',
          'Top speed: 117 mph',
          'Acceleration: 0-60 mph in 8.6 seconds',
          'Fuel economy: 28 mpg city / 34 mpg highway'
        ],
      ),
      image: 'assets/ford-escape.png',
    ),
    Car(
      brand: 'Ford',
      model: 'Fiesta',
      pricePerDay: 90.0,
      carDetail: CarDetail(
        brand: 'Ford',
        model: 'Fiesta',
        description:
            'The Ford Fiesta is a supermini marketed by Ford since 1976 over seven generations. ',
        pricePerDay: 90,
        specifications: [
          'Engine: 1.6 L 4-cylinder engine',
          'Horsepower: 120 hp @ 6,350 RPM',
          'Torque: 112 lb-ft @ 5,000 RPM',
          'Transmission: 5-speed manual',
          'Top speed: 112 mph',
          'Acceleration: 0-60 mph in 9.8 seconds',
          'Fuel economy: 27 mpg city / 35 mpg highway'
        ],
      ),
      image: 'assets/ford-fiesta.png',
    ),
    Car(
      brand: 'Ford',
      model: 'F-150',
      pricePerDay: 100.0,
      carDetail: CarDetail(
        brand: 'Ford',
        model: 'F-150',
        description:
            'The Ford F-150 is a full-size pickup truck that has been the best-selling vehicle in the United States for over four decades. ',
        pricePerDay: 100,
        specifications: [
          'Engine: 5.0 L V8 engine',
          'Horsepower: 400 hp @ 6,000 RPM',
          'Torque: 410 lb-ft @ 4,250 RPM',
          'Transmission: 10-speed automatic',
          'Top speed: 107 mph',
          'Acceleration: 0-60 mph in 5.9 seconds',
          'Fuel economy: 20 mpg city / 24 mpg highway'
        ],
      ),
      image: 'assets/f-150.png',
    ),
  ];
}

class ChevroletCars {
  static List<Car> cars = [
    Car(
      brand: 'Chevrolet',
      model: 'Spark',
      pricePerDay: 45.0,
      carDetail: CarDetail(
        brand: 'Chevrolet',
        model: 'Spark',
        description: 'Compact car, perfect for city driving.',
        pricePerDay: 45,
        specifications: [
          'Engine: 1.4L Ecotec 4-cylinder',
          'Horsepower: 98 hp @ 6200 RPM',
          'Torque: 94 lb-ft @ 4400 RPM',
          'Transmission: 5-speed manual',
          'Top speed: 109 mph',
          'Acceleration: 0-60 mph in 10.5 seconds',
          'Fuel economy: 30 mpg city / 38 mpg highway'
        ],
      ),
      image: 'assets/spark.png',
    ),
    Car(
      brand: 'Chevrolet',
      model: 'Onix',
      pricePerDay: 60.0,
      carDetail: CarDetail(
        brand: 'Chevrolet',
        model: 'Onix',
        description: 'Subcompact car, perfect for small families.',
        pricePerDay: 60,
        specifications: [
          'Engine: 1.0L Turbocharged 3-cylinder',
          'Horsepower: 116 hp @ 5500 RPM',
          'Torque: 122 lb-ft @ 2000-3500 RPM',
          'Transmission: 6-speed automatic',
          'Top speed: 119 mph',
          'Acceleration: 0-60 mph in 9.5 seconds',
          'Fuel economy: 29 mpg city / 36 mpg highway'
        ],
      ),
      image: 'assets/onix.png',
    ),
    Car(
      brand: 'Chevrolet',
      model: 'Sail',
      pricePerDay: 55.0,
      carDetail: CarDetail(
        brand: 'Chevrolet',
        model: 'Sail',
        description: 'Compact car, perfect for city driving.',
        pricePerDay: 55,
        specifications: [
          'Engine: 1.4L 4-cylinder',
          'Horsepower: 98 hp @ 6000 RPM',
          'Torque: 89 lb-ft @ 4600 RPM',
          'Transmission: 5-speed manual',
          'Top speed: 106 mph',
          'Acceleration: 0-60 mph in 12 seconds',
          'Fuel economy: 30 mpg city / 37 mpg highway'
        ],
      ),
      image: 'assets/sail.png',
    ),
    Car(
      brand: 'Chevrolet',
      model: 'Tracker',
      pricePerDay: 80.0,
      carDetail: CarDetail(
        brand: 'Chevrolet',
        model: 'Tracker',
        description: 'Compact SUV, perfect for adventurous families.',
        pricePerDay: 80,
        specifications: [
          'Engine: 1.2L Turbocharged 3-cylinder',
          'Horsepower: 137 hp @ 5000 RPM',
          'Torque: 162 lb-ft @ 2500 RPM',
          'Transmission: 6-speed automatic',
          'Top speed: 120 mph',
          'Acceleration: 0-60 mph in 8.7 seconds',
          'Fuel economy: 25 mpg city / 30 mpg highway'
        ],
      ),
      image: 'assets/tracker.png',
    ),
  ];
}
