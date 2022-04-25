import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _whidth = 50;
  double _height = 50;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container')),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 410),
          curve: Curves.easeOutSine,
          width: _whidth,
          height: _height,
          //color: Colors.red,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.play_circle,
          size: 35,
        ),
        onPressed: () {
          changeShape();
        },
      ),
    );
  }

  void changeShape() {
    final ramdom = Random();
    _whidth = ramdom.nextInt(500).toDouble();
    _height = ramdom.nextInt(900).toDouble();
    _color = Color.fromRGBO(
        ramdom.nextInt(255), ramdom.nextInt(255), ramdom.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(ramdom.nextInt(10).toDouble() + 10);

    setState(() {});
  }
}
