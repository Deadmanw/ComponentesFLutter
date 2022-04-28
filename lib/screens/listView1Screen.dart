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
                    title: Text('opcion ' + e),
                    trailing: const Icon(Icons.arrow_forward),
                  ))
              .toList(),
          const Divider(
            height: 50,
            thickness: 10,
            color: Color.fromARGB(255, 173, 19, 19),
            endIndent: 2,
            indent: 3,
          ),
          ListTile(
            title: const Text('Lista opciones'),
            subtitle: const Text('o no?'),
            leading: const Icon(Icons.ac_unit),
            onTap: () {
              print('Hola');
            },
            onLongPress: () {
              print('alto ahi cerebrito');
            },
          )
        ],
      ),
    );
  }
}
