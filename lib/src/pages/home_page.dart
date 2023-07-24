import 'package:app_components/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes')),
      body: _lista(),
    );
  }

  Widget _lista() {
    print(menuProvider.opciones);
    return ListView(
      children: _listItems(),
    );
  }

  List<Widget> _listItems() {
    return [
      const ListTile(
        title: Text('Hoola'),
      )
    ];
  }
}
