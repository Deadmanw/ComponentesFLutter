import 'package:flutter/material.dart';

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
              TextFormField(
                autofocus: false,
                decoration: const InputDecoration(
                  labelText: 'Ingrese su nombre',
                  hintText: 'Nombre del usuario',
                  helperText: 'Solo letras',
                  counterText: '3 caracteres',
                  suffixIcon: Icon(Icons.group),
                  //prefixIcon: Icon(Icons.usb_rounded),
                  icon: Icon(Icons.airplanemode_active),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                ),
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print('value $value');
                },
                validator: (value) {
                  if (value == null) return 'este campo es requerido';
                  return value.length < 3 ? 'minimo 3 caracteres' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              )
            ],
          ),
        ),
      ),
    );
  }
}
