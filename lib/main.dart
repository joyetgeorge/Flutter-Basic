import 'package:flutter/material.dart';
import 'package:helloworld/quiz.dart';

import './quiz.dart';
import './score.dart';

void main() => runApp(const HelloWorld());

class HelloWorld extends StatefulWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HelloWorldState();
  }
}

class HelloWorldState extends State {
  var _questionIndex = 0;

  final _questions = [
    {
      'question': 'Which is your fav Text editor?',
      'answer': ['VScode', 'SublimeText', 'Vim', 'Atom'],
    },
    {
      'question': 'Which is your field?',
      'answer': ['Frontend', 'Backend', 'Else'],
    },
    {
      'question': 'Which is your fav programming language?',
      'answer': ['Java', 'Pyton', 'Dart'],
    },
  ];

  void _incriment() {
    setState(() {
      ++_questionIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('Hello World'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  incriment: _incriment,
                )
              : const Score(

              )),
      debugShowCheckedModeBanner: false,
    );
  }
}
