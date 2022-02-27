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
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          children: [
            Card(
              elevation: 10,
              color: Colors.green.shade300,
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      'primer card',
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text('subtitulo',
                        style: TextStyle(color: Colors.black)),
                    leading: Icon(
                      Icons.rowing,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
