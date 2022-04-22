import 'package:compoentesvarios/models/models.dart';
import 'package:compoentesvarios/router/appRoutes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Widgets Flutter'),
          centerTitle: true,
          elevation: 0,
          actions: const [
            Image(image: AssetImage('lib/assets/imagenes/pokemon.png'))
          ],
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(
                  menuOptions[index].icon,
                  color: Colors.greenAccent,
                ),
                title: Text(menuOptions[index].name),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[index].route);
                },
              );
            },
            separatorBuilder: (_, __) {
              return const Padding(padding: EdgeInsets.all(5));
            },
            itemCount: menuOptions.length));
  }
}
