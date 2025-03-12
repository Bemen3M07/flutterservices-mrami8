import 'package:flutterservice/model/car_model.dart';
import 'package:http/http.dart' as http;

class CarHttpService {
  final String _serverUrl = "https://car-data.p.rapidapi.com/cars?limit=10&page=0";
  final String _headerKey = "8bda367b94msh8f93e5c2cf43d72p125441jsnb94bdf861809";
  final String _headerHost = "car-data.p.rapidapi.com";

  /*
  Obtener la lista de coches
  */
  Future<List<CarsModel>> getCars() async {
    var uri = Uri.parse(_serverUrl); // Corregido: no concatenamos "/cars"

    var response = await http.get(uri, headers: {
      "x-rapidapi-key": _headerKey, 
      "x-rapidapi-host": _headerHost
    });

    // Debugging prints
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");

    if (response.statusCode == 200) {
      return carsModelFromJson(response.body);
    } else {
      throw ("Error al obtener la lista de coches: ${response.statusCode} - ${response.body}");
    }
  }
}
