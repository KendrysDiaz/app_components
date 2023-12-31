import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert Page')),
      body: Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, shape: const StadiumBorder()),
        onPressed: () => _mostrarAlerta(context),
        child: const Text('Mostrar Alerta'),
      )),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return const AlertDialog(
          title: Text('Titulo'),
          content: Text('Contenido'),
        );
      },
    );
  }
}
