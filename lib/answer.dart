import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() incrimentFunction;
  final String answerText;

  Answer(this.incrimentFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: incrimentFunction,
      ),
    );
  }
}
