import 'package:flutter/material.dart';
import 'package:quiz_app/backgroundGradient.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: GradientContainer(Color.fromARGB(224, 222, 123, 12),
            Color.fromARGB(219, 181, 101, 9)),
      ),
    ),
  ));
}
