import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        question,
        style: const TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  }
}
