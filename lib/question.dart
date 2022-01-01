import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 50),
      child: Text(
        question,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
