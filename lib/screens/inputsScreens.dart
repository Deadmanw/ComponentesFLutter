import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y Forms')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              customInputField(
                labelText: 'Nombre',
                hintext: 'Nombre del usuario',
                helperText: 'Ingrese un Nombre',
                icon: Icons.group_add,
              )
            ],
          ),
        ),
      ),
    );
  }
}
