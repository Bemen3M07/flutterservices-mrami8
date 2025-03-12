import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutterservice/providers/car_provider.dart';
import 'package:flutterservice/page/cars_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CarProvider(), // Inicializa el Provider globalmente
      child: MaterialApp(
        title: 'Rent Cars',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CarsPage(), // Página principal
      ),
    );
  }
}
