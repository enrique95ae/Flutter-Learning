import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: <Color>[
          Colors.purple,
          Colors.pink,
          Colors.green,
          Colors.yellow,
          Colors.orange
        ]),
      ),
    ),
  );
}
