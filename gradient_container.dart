
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // 1. Removed 'const' from here because activeDiceImage is a variable that changes
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2; 
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Image.asset(
              // 2. Removed the accidental single quote mark from the variable name
              activeDiceImage,
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20
                ),
                foregroundColor: Colors.white, 
              ),
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}