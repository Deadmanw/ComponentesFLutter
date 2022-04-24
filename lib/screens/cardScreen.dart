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
          padding: const EdgeInsets.only(left: 10, right: 15),
          children: const [
            CustomCard(),
            SizedBox(height: 10),
            CustomCard(),
            SizedBox(height: 10),
            CustomCard(),
            SizedBox(height: 10),
            CustomCard2(
              imageUrl:
                  'https://www.xtrafondos.com/wallpapers/resized/paisaje-digital-en-atardecer-5846.jpg?s=large',
              imageDescript: 'paisaje',
            ),
            SizedBox(height: 10),
            CustomCard2(
              imageUrl:
                  'https://www.xtrafondos.com/wallpapers/resized/samoyedo-en-lago-y-montanas-3936.jpg?s=large',
              imageDescript: 'perrito',
            ),
            SizedBox(height: 10),
            CustomCard2(
              imageUrl:
                  'https://www.xtrafondos.com/wallpapers/resized/yosemite-al-atardecer-6943.jpg?s=large',
            ),
            SizedBox(height: 10),
          ],
        ));
  }
}
