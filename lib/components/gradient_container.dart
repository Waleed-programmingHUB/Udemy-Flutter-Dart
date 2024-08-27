import 'package:flutter/material.dart';

// Variables for Gradient Alignment
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// Color passing parameter as a Color Object variable
class GradientContainer extends StatelessWidget {
  final Color colour1, colour2; // passing custom colors
  // active dice image
  var activeDice = 'assets/image/dice-2.png';

  const GradientContainer(this.colour1, this.colour2, {super.key});
  // purple gradient
  const GradientContainer.purple({super.key})
      : colour1 = Colors.deepPurpleAccent,
        colour2 = Colors.indigo;

  // function
  void rolldice() {
    activeDice = 'assets/image/dice-1.png';
    print('Dice Rolled');
  }

  // Widget build method
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [colour1, colour2],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDice,
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
        ),
      ),
    );
  }
}

// // Color passing parameter as a List Object
// class GradientContainer extends StatelessWidget {
//   final List<Color> mycolor; // passing custom colors
//   const GradientContainer({super.key, required this.mycolor});
//   // Widget build method
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: mycolor, begin: startAlignment, end: endAlignment),
//       ),
//       child: const Center(
//         child: StyleText('Hello, Flutter!'),
//       ),
//     );
//   }
// }
