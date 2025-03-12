import 'package:flutterservice/data/car_http_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CarsApi', () {
    test('get cars', () async {
      final carHttpService = CarHttpService();
      final cars = await carHttpService.getCars();

      // Debugging prints
      print('Number of cars: ${cars.length}');
      print('Cars list: $cars');

      expect(cars.length, 10);
      expect(cars[0].id, 9582);
      expect(cars[9].id, 9591);
    });
  });
}
