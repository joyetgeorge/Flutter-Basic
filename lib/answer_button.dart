import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() incrimentFunction;
  final String answerText;

  const Answer(this.incrimentFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(20),
      hoverColor: Colors.blue,
      color: Colors.blueAccent,
      onPressed: incrimentFunction,
      child: Text(answerText, style: TextStyle(color: Colors.white),),
    );
  }
}
