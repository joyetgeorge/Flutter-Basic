import 'package:flutter/material.dart';

import './question.dart';
import 'answerButton.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function() incriment;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.incriment,
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
                return Answer(incriment, e);
              }).toList()
            ],
          ),
        )
      ],
    ));
  }
}
