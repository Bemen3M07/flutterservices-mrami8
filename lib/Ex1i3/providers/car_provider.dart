import 'package:flutter/material.dart';
import 'package:flutterservice/Ex1i3/data/car_http_service.dart';
import 'package:flutterservice/Ex1i3/model/car_model.dart';

class CarProvider extends ChangeNotifier {
  final CarHttpService _carHttpService = CarHttpService();
  List<CarsModel> _carsModel = [];
  bool _isLoading = false;

  List<CarsModel> get carsModel => _carsModel;
  bool get isLoading => _isLoading;

  Future<void> getCarsData() async {
    _isLoading = true;
    notifyListeners();

    try {
      _carsModel = await _carHttpService.getCars();
    } catch (e) {
      print("Error al obtener los coches: $e");
    }

    _isLoading = false;
    notifyListeners();
  }
}
