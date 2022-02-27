import 'package:compoentesvarios/widgets/appBarP.dart';
import 'package:flutter/material.dart';

class DetallesScreen extends StatelessWidget {
  const DetallesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
        actions: const [
          Image(image: AssetImage('lib/assets/imagenes/pokemon.png'))
        ],
      ),
      body: const Center(
        child: Text('DetallesScreen'),
      ),
    );
  }
}
