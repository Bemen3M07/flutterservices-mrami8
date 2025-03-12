
import 'package:flutterservice/Exercici_02/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Pagina2 extends StatefulWidget {
  const Pagina2({super.key});

  @override
  State<Pagina2> createState() => _Page2State();
}

class _Page2State extends State<Pagina2> {
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