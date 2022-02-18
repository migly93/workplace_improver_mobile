import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/quiz.dart';
import 'package:workplace_improver_mobile/result.dart';
import 'package:workplace_improver_mobile/resume.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        'questionText': 'Favorite color?',
        'answers': [
          {'text': 'Black', 'score': 6},
          {'text': 'Red', 'score': 5},
          {'text': 'Blue', 'score': 4},
          {'text': 'Green', 'score': 3},
        ]
      },
      {
        'questionText': 'Favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 6},
          {'text': 'Snake', 'score': 5},
          {'text': 'Dog', 'score': 4},
          {'text': 'Cat', 'score': 3},
        ]
      },
      {
        'questionText': 'Favorite food?',
        'answers': [
          {'text': 'Pizza', 'score': 6},
          {'text': 'Burger', 'score': 5},
          {'text': 'Chinese', 'score': 4},
          {'text': 'Pasta', 'score': 3},
        ]
      },
    ];

    void _answerQuestion(int score) {
      setState(() {
        _totalScore += score;
        _questionIndex++;
      });
    }

    void _resetQuiz() {
      setState(() {
        _totalScore = 0;
        _questionIndex = 0;
      });
    }

    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: SafeArea(
            child: Column(
              children: [
                Resume(4, 2),
                _questionIndex < questions.length
                    ? Quiz(questions, _questionIndex, _answerQuestion)
                    : Result(_totalScore, _resetQuiz),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
