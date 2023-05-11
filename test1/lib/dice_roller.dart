import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/images/dice-3.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6) +1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';

    });


  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
            activeDiceImage,
            width: 200),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              //padding: const EdgeInsets.only(top: 2,bottom: 2,left: 2,right: 2),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}