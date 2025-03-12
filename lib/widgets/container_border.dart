import 'package:flutter/material.dart';
import 'package:flutterservice/model/car_model.dart';

class BorderContainer extends StatelessWidget {
  final CarsModel car;

  const BorderContainer({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(car.make + " " + car.model),
        subtitle: Text("Year: ${car.year} - Type: ${car.type}"),
        leading: const Icon(Icons.directions_car),
      ),
    );
  }
}
