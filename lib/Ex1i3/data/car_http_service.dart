import 'package:http/http.dart' as http;
import 'package:flutterservice/Ex1i3/model/brand_model.dart';
import 'package:flutterservice/Ex1i3/model/car_model.dart';
import 'dart:convert';

class CarHttpService {
  final String _url = 'https://car-data.p.rapidapi.com/cars?limit=10&page=0';
  final String _headerKey = "8bda367b94msh8f93e5c2cf43d72p125441jsnb94bdf861809";
  final String _headerHost = "car-data.p.rapidapi.com";

  Future<List<CarsModel>> getCars() async {
    var uri = Uri.parse(_url);
    var response = await http.get(uri, headers: {
      "x-rapidapi-key": _headerKey,
      "x-rapidapi-host": _headerHost,
    });

    if (response.statusCode == 200) {
      return carsModelFromJson(response.body);
    } else {
      throw ("Error al obtener la lista de coches: ${response.statusCode} - ${response.body}");
    }
  }

  Future<List<String>> getBrands() async {
    var uri = Uri.parse("https://car-data.p.rapidapi.com/brands");
    var response = await http.get(uri, headers: {
      "x-rapidapi-key": _headerKey,
      "x-rapidapi-host": _headerHost,
    });

    if (response.statusCode == 200) {
      return brandModelFromJson(response.body);
    } else {
      throw ("Error al obtener las marcas de coches: ${response.statusCode} - ${response.body}");
    }
  }
}
