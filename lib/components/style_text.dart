import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key});
  @override
  Widget build(context) {
    return const Text('Text with Style',
        style: TextStyle(color: Colors.white70, fontSize: 28.0));
  }
}
