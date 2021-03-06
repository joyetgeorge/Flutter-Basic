import 'package:flutter/material.dart';

import './question.dart';
import 'answer_button.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function() increment;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.increment,
  });

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Question(
          questions[questionIndex]['question'],
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...(questions[questionIndex]['answer'] as List<String>).map((e) {
                return Answer(increment, e);
              }).toList()
            ],
          ),
        )
      ],
    ));
  }
}
