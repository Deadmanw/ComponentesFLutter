import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              backgroundColor: Colors.grey,
              child: Text('data'),
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
            maxRadius: 100,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/48410947?v=4')),
      ),
    );
  }
}
