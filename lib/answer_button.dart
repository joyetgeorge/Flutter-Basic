import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() incrementFunction;
  final String answerText;

  const Answer(this.incrementFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(20),
      hoverColor: Colors.blue,
      color: Colors.blueAccent,
      onPressed: incrementFunction,
      child: Text(answerText, style: TextStyle(color: Colors.white),),
    );
  }
}
