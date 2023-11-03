import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 350,
          color: Color.fromARGB(150, 255, 205, 210),
        ),
        const SizedBox(
          width: 10,
          height: 40,
        ),
        const Text(
          'Learn Flutter the right way',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        const SizedBox(
          width: 10,
          height: 40,
        ),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(5.0),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.subdirectory_arrow_right_sharp,
              color: Colors.white,
            ),
            label: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
      ],
    );
    throw UnimplementedError();
  }
}
