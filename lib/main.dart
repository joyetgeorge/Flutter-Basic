import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(HelloWorld());

class HelloWorld extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HelloWorldState();
  }
}

class HelloWorldState extends State {
  var num = 0;

  void incriment() {
    if (num > 1) {
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
      "Which is your fav color?",
      "Which is your fav place?",
      "Where are you from?"
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
                Question(questions[num]),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        child: Text("Button"),
                        onPressed: incriment,
                      ),
                      RaisedButton(
                        child: Text("Button"),
                        onPressed: incriment,
                      ),
                      RaisedButton(
                        child: Text("Button"),
                        onPressed: incriment,
                      ),
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
