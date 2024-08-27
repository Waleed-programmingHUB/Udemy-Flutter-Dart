import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

// Dice Rollar Class
class DiceRollar extends StatefulWidget {
  const DiceRollar({super.key});

  @override
  State<DiceRollar> createState() {
    return _DiceRollarState();
  }
}

class _DiceRollarState extends State<DiceRollar> {
  // active dice image
  var currentDice = 1;
  // function
  void rolldice() {
    currentDice = randomizer.nextInt(6) + 1; // 0 and 5
    setState(() {});
    print('Dice Rolled');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 200.0,
        ),
        const SizedBox(height: 20.0),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20.0),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 29.1,
                )),
            child: const Text('Roll Dice')),
      ],
    );
  }
}
