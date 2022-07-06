import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int qIndex;
  final Function answerQuestion;
  final List<Map<String, Object>> questions;

  Quiz(
      {required this.qIndex,
      required this.answerQuestion,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[qIndex]['qText']),
      ...(questions[qIndex]['answers'] as List<Map<String,Object>>).map((answer) {
        return Answer(() =>answerQuestion(answer['score']), answer['text'] as String);
      }).toList()
    ]);
  }
}
