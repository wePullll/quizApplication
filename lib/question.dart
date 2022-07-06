import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final  qtext ;
  Question(this.qtext);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          qtext,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 28.0,
          ),
        ),
      ),
    );
  }
}
