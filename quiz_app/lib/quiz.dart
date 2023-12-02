import 'package:flutter/material.dart';
import 'package:quiz_app/backgroundGradient.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/startScreen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void resetQuiz() {
    setState(() {
      activeScreen = 'questions-screen';
      selectedAnswers = [];
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
        //selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (activeScreen == 'results-screen') {}
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
                : activeScreen != 'results-screen'
                    ? QuestionScreen(onSelectAnswer: chooseAnswer)
                    : ResultsScreen(
                        chosenAnswers: selectedAnswers,
                        restart: resetQuiz,
                      ),
          ),
        ),
      ),
    );
  }
}
