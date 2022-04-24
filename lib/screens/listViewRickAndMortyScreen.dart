import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListViewRickAndMortyScreen extends StatelessWidget {
  const ListViewRickAndMortyScreen({Key? key}) : super(key: key);

  final options = const ['1', '2', '3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick And List'),
        actions: const [
          Image(image: AssetImage('lib/assets/imagenes/pokemon.png'))
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              shape: CircleBorder(),
              title: Text(
                options[index],
                textAlign: TextAlign.center,
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                final option = options[index];
                print(option);
              },
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length),
    );
  }
}
