import 'package:flutter/material.dart';

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
  var resetFlag = false;

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
      'answer': ['Java', 'Python', 'Dart'],
    },
  ];

  void _increment() {
    setState(() {
      ++_questionIndex;
    });
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Center(child: Text('Developer Survey')),
          ),
          body: _questionIndex < _questions.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // color: Colors.amber,
                      margin: const EdgeInsets.only(
                        left: 45,
                        right: 45,
                      ),
                      child: Quiz(
                        questions: _questions,
                        questionIndex: _questionIndex,
                        increment: _increment,
                      ),
                    ),
                  ],
                )
              : Score(_reset)),
      debugShowCheckedModeBanner: false,
    );
  }
}
