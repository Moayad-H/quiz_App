import 'package:flutter/material.dart';
import 'package:quiz_app/backgroundGradient.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/startScreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(224, 222, 123, 12),
              Color.fromARGB(219, 181, 101, 9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: activeScreen == 'start-screen'
                ? StartPage(switchScreen)
                : const QuestionScreen(),
          ),
        ),
      ),
    );

    throw UnimplementedError();
  }
}
