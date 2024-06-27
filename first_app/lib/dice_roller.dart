import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice () {
    var index = Random().nextInt(6) + 1;

    setState(() {
      activeDiceImage = 'assets/images/dice-$index.png';
    });
  }

  @override
  Widget build(context) {
    return Column (
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                activeDiceImage,
                width: 200,
                ),
              const SizedBox( height: 20 ),
              TextButton(
                onPressed: rollDice, 
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue, 
                  textStyle: const TextStyle(backgroundColor: Colors.white)),
                child: const Text("Roll dice")
                )
          ],);
  }
}