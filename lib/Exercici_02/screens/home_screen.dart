import 'package:provider/provider.dart';
import 'package:flutterservice/Exercici_02/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import '../page/page1.dart';
import '../page/page2.dart';
import '../page/page3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const <Widget>[
    Pagina1(),
    Pagina2(),
    Pagina3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
        actions: [
          TextButton(onPressed: null, child: Text(
            context.watch<CounterProvider>().counter.toString(),
          )),
        ],
      ), // AppBar
      body: _pages[_selectedIndex],      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Pagina 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Pagina 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Pagina 3',
          ),
        ],
      ), // Center
    );
  }
}