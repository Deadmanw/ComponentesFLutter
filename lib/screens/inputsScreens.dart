import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'firts_name': 'daniel',
      'last_name': 'Rodriguez',
      'email': 'dan@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y Forms')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintext: 'Nombre del usuario',
                  helperText: 'Ingrese un Nombre',
                  icon: Icons.group_add,
                  formProperty: 'firts_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Apellido',
                  hintext: 'Apellido del usuario',
                  helperText: 'Ingrese un Apellido',
                  icon: Icons.group_add_outlined,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Correo',
                  hintext: 'Correo del usuario',
                  helperText: 'Ingrese un Correo',
                  icon: Icons.email,
                  inputType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintext: 'Contraseña del usuario',
                  helperText: 'Ingrese la Contraseña del Usuario',
                  icon: Icons.password,
                  isPassword: true,
                  inputType: TextInputType.visiblePassword,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'super_user',
                      child: Text('Super user'),
                    ),
                    DropdownMenuItem(
                      value: 'developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'invitado',
                      child: Text('Invitado'),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('formulario no valido');
                      return;
                    }
                    //TODO: IMPRIMIR VALORES DEL FORMULARIO
                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
