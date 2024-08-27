import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  final String text;
  const StyleText(this.text, {super.key});
  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(color: Colors.white70, fontSize: 28.0));
  }
}
