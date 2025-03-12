import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutterservice/Ex1i3/providers/car_provider.dart';
import 'package:flutterservice/Ex1i3/widgets/list_cars.dart';


class CarsPage extends StatefulWidget {
  const CarsPage({Key? key}) : super(key: key);

  @override
  State<CarsPage> createState() => _CarsPageState();
}

class _CarsPageState extends State<CarsPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<CarProvider>(context, listen: false).getCarsData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F8FC),
      body: SafeArea(
        child: Consumer<CarProvider>(
          builder: (context, value, child) {
            if (value.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (value.carsModel.isNotEmpty) {
              return ListCars(cars: value.carsModel);
            }
            return const Center(child: Text("No hay coches disponibles.")); // Sustituir messageErrorCarsApi si no está definido
          },
        ),
      ),
    );
  }
}
