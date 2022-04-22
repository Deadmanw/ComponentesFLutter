import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.green.shade300,
      child: Column(
        children: const [
          ListTile(
            title: Text(
              'primer card',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text('subtitulo', style: TextStyle(color: Colors.black)),
            leading: Icon(
              Icons.rowing,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
