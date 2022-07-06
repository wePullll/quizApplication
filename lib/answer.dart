import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  late VoidCallback selector; 
  final String aText;
  Answer(this.selector, this.aText); 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(aText),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: selector,
      ),
    );
  }
}