import 'dart:io';

import 'package:compoentesvarios/widgets/appBarP.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas'),
        actions: const [
          Image(image: AssetImage('lib/assets/imagenes/pokemon.png'))
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Mostrar Alerta'),
          onPressed: () {
            Platform.isAndroid ? alertaAndroid(context) : alertaIOS(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          print('en algun momento hare algo, por ahora no c');
        },
      ),
    );
  }

  void alertaAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(30)),
            elevation: 5,
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('contenido de la alertaAndroid'),
                SizedBox(
                  height: 5,
                ),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    print('cancelado');
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar')),
              TextButton(
                  onPressed: () {
                    print('cancelado');
                    Navigator.pop(context);
                  },
                  child: const Text('Aceptar'))
            ],
          );
        });
    print('wosh ALERTA');
  }

  void alertaIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('Alerta IOS'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('contenido de la alerta IOS'),
              SizedBox(
                height: 5,
              ),
              FlutterLogo(
                size: 100,
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  print('cancelado');
                  Navigator.pop(context);
                },
                child: const Text('Cancelar')),
            TextButton(
                onPressed: () {
                  print('cancelado');
                  Navigator.pop(context);
                },
                child: const Text('Aceptar'))
          ],
        );
      },
    );
  }
}
