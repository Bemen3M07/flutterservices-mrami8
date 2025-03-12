import 'package:flutter/material.dart';
import 'package:flutterservice/Ex1i3/widgets/container_border.dart';
import 'package:flutterservice/Ex1i3/model/car_model.dart';

class ListCars extends StatelessWidget {
  final List<CarsModel> cars;
  
  const ListCars({Key? key, required this.cars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: cars.length,
      itemBuilder: (context, index) {
        return BorderContainer(car: cars[index]);
      },
    );
  }
}
