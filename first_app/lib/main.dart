import 'package:first_app/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: 
            const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purpleAccent, 
                  Colors.pink,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          child: const StartScreen(),
        ),
      )
    )
  );
}
