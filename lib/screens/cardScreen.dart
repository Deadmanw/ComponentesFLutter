import 'package:compoentesvarios/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('card'),
          actions: const [
            Image(image: AssetImage('lib/assets/imagenes/pokemon.png'))
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          children: const [
            CustomCard(),
          ],
        ));
  }
}
