import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        actions: const [
          Image(image: AssetImage('lib/assets/imagenes/pokemon.png'))
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
