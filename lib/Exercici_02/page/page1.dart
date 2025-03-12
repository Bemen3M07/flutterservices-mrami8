
import 'package:flutterservice/Exercici_02/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Pagina1 extends StatefulWidget {
  const Pagina1({super.key});

  @override
  State<Pagina1> createState() => _Page1State();
}

class _Page1State extends State<Pagina1> {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(context.watch<CounterProvider>().counter.toString(), 
              style: const TextStyle(fontSize: 55)),
          ElevatedButton(
            onPressed: (){
              context.read<CounterProvider>().increment();
          }, 
          child: const Text("Cuenta 1 mas"))
        ],
      ), 
    );
  }
}