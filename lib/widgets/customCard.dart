import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          const ListTile(
            title: Text(
              'primer card',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            subtitle: Text('subtitulo',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            leading: Icon(
              Icons.rowing,
              color: Color.fromARGB(255, 160, 12, 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text('Aceptar'),
                    style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 14, 80, 9)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
