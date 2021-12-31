// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(const HelloWorld());

class HelloWorld extends StatefulWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HelloWorldState();
  }
}

class HelloWorldState extends State {
  // var questions;

  // Future fetchAlbum() async {
  //   final url = Uri.parse(
  //       'https://opentdb.com/api.php?amount=10&category=18&difficulty=easy&type=multiple');

  //   http.Response response =
  //       await http.get(url, headers: {'Accept': 'application/json'});
  //   setState(() {
  //     questions = json.decode(response.body);
  //     print(questions);
  //   });
  //   // return "hello";
  // }

  var num = 0;

  var questions = [
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

  void incriment() {
      setState(() {
        ++num;
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
          body: num < questions.length ? Column(
            children: [
              Question(
                questions[num]['question'],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...(questions[num]['answer'] as List<String>).map((e) {
                      return Answer(incriment, e);
                    }).toList()
                  ],
                ),
              )
            ],
          ) : const Center(child: Text('You did it!'),)

          ),
      debugShowCheckedModeBanner: false,
    );
  }
}
