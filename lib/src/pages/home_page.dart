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
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: const [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data!),
        );
      },
    );

    // return ListView(
    //   children: _listItems(),
    // );
  }

  List<Widget> _listItems(List<dynamic> data) {
    final List<Widget> opciones = [];
    for (var opt in data) {
      if (opt.containsKey('texto')) {
        final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: const Icon(Icons.circle),
          trailing: const Icon(Icons.arrow_right),
          onTap: () {},
        );
        opciones.add(widgetTemp);
      }
    }

    return opciones;
  }
}
