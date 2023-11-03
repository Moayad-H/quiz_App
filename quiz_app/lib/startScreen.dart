import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 350,
          color: const Color.fromARGB(150, 255, 205, 210),
        ),
        const SizedBox(
          width: 10,
          height: 50,
        ),
        const Text(
          'Learn Flutter the right way',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        const SizedBox(
          width: 10,
          height: 50,
        ),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(10.0),
            ),
            onPressed: startQuiz,
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
