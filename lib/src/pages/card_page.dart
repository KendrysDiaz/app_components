import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Page')),
      body: ListView(padding: const EdgeInsets.all(15), children: <Widget>[
        _cardTipo1(),
        _cardTipo2(),
      ]),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(children: <Widget>[
        const ListTile(
          leading: Icon(Icons.photo_album_outlined, color: Colors.blue),
          title: Text('Soy el piloto'),
          subtitle: Text('Borrador del curso'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(onPressed: () {}, child: const Text('Cancelar')),
            TextButton(onPressed: () {}, child: const Text('Ok'))
          ],
        )
      ]),
    );
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(children: [
        const FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(
                'https://www.xtrafondos.com/descargar.php?id=5846&resolucion=2560x1440'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250,
            fit: BoxFit.cover),
        Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Paisaje bonito'))
      ]),
    );
  }
}
