import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({super.key});
  final options = ['Uno', 'Dos', 'Tres'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Temporales'),
      ),
      body: ListView(children: _crearItems()),
    );
  }

  List<Widget> _crearItems() {
    return options
        .map((opt) => ListTile(
              title: Text(opt),
              subtitle: const Text('Numeros'),
              leading: const Icon(Icons.emergency_sharp),
              trailing: const Icon(Icons.arrow_right),
              onTap: () => {},
            ))
        .toList();
  }
}
