import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;
  Result(this.score, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    resultText = 'Your final score is : $score/30';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
          child: const Text('Reset Quiz'),
          onPressed: resetQuiz,
        ),
      ],
    );
  }
}
