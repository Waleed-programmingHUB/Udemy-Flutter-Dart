import 'package:flutter/material.dart';
import 'package:udemy_flutter_starter/components/style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> mycolor; // passing custom colors
  const GradientContainer(this.mycolor, {super.key});
  // Widget build method
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: mycolor, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: StyleText('Hello, Flutter!'),
      ),
    );
  }
}
