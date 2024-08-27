import 'package:flutter/material.dart';
import 'package:udemy_flutter_starter/components/dice_rollar.dart';

// Variables for Gradient Alignment
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// Color passing parameter as a Color Object variable
// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  final Color colour1; // passing custom colors
  final Color colour2; // passing custom colors

  const GradientContainer(this.colour1, this.colour2, {super.key});
  // purple gradient
  const GradientContainer.purple({super.key})
      : colour1 = Colors.deepPurpleAccent,
        colour2 = Colors.indigo;

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
      child: const Center(child: DiceRollar()),
    );
  }
}
// using StatelessWidget

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
