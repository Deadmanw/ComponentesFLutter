import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const ['1', '2', '3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Varios List'),
        actions: const [
          Image(image: AssetImage('lib/assets/imagenes/pokemon.png'))
        ],
      ),
      body: ListView(
        children: [
          ...options
              .map((e) => ListTile(
                    leading: const Icon(Icons.airplanemode_on),
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward),
                  ))
              .toList(),
          const Divider(
            height: 20,
          ),
          const ListTile(
            title: Text('Lista opciones'),
            leading: Icon(Icons.ac_unit),
          )
        ],
      ),
    );
  }
}
