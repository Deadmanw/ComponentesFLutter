import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String imageUrl;
  final String? imageDescript;

  const CustomCard2({Key? key, required this.imageUrl, this.imageDescript})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: Colors.red,
      elevation: 15,
      color: Colors.white,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: AssetImage('lib/assets/imagenes/loading-bar.gif'),
            fadeInDuration: Duration(seconds: 1),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
          ),
          if (imageDescript != null)
            Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(5),
              child: Text(imageDescript ?? 'No Description',
                  style: const TextStyle(
                    color: Colors.black,
                  )),
            ),
        ],
      ),
    );
  }
}
