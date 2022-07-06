import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _qIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _qIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'qText': 'What is 2^3',
        'answers': [
          {'text': '4', 'score': 0},
          {'text': '6', 'score': 0},
          {'text': '8', 'score': 10},
          {'text': '9', 'score': 0}
        ],
      },
      {
        'qText': 'What is India\'s Capital',
        'answers': [
          {'text': 'Mumbai', 'score': 0},
          {'text': 'Delhi', 'score': 10},
          {'text': 'Pune', 'score': 0},
          {'text': 'Chandigarh', 'score': 0}
        ],
      },
      {
        'qText': 'World\'s largest desert is',
        'answers': [
          {'text': 'Sahara', 'score': 10},
          {'text': 'Thar', 'score': 0},
          {'text': 'Kalahari', 'score': 0},
          {'text': 'Sonoran', 'score': 0}
        ],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        body: _qIndex < _questions.length
            ? Quiz(
                qIndex: _qIndex,
                answerQuestion: _answerQuestion,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
