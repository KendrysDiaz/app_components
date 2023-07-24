import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map mapData = json.decode(resp);
    opciones = mapData['rutas'];

    return opciones;
  }
}

final menuProvider = _MenuProvider();
