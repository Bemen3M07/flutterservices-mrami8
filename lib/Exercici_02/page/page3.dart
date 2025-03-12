import 'package:flutterservice/Exercici_02/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina3 extends StatefulWidget {
  const Pagina3({super.key});

  @override
  State<Pagina3> createState() => _Page3State();
}

class _Page3State extends State<Pagina3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.watch<CounterProvider>().counter.toString(),
            style: const TextStyle(fontSize: 55),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CounterProvider>().increment();
            },
            child: const Text("Cuenta 1 más"),
          ),
        ],
      ),
    );
  }
}