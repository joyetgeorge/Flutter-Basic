import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(HelloWorld());

class HelloWorld extends StatefulWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HelloWorldState();
  }
}

class HelloWorldState extends State {
  var num = 0;

  void incriment() {
    if (num > 2) {
      setState(() {
        num = 0;
      });
    } else {
      setState(() {
        ++num;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'Which is your fav color?',
        'answer': ['blue', 'red', 'green'],
      },
      {
        'question': 'Which is your fav color?',
        'answer': ['blue', 'red', 'green'],
      },
      {
        'question': 'Which is your fav color?',
        'answer': ['blue', 'red', 'green'],
      },
      {
        'question': 'Which is your fav color?',
        'answer': ['blue', 'red', 'green'],
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Hello World'),
          ),
          body: Container(
            child: Column(
              children: [
                Question(
                  questions[num]['question'],
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Answer(incriment),
                      Answer(incriment),
                      Answer(incriment),
                    ],
                  ),
                )
              ],
            ),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
