import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  // const Score({Key? key}) : super(key: key);
  final Function() reset;

  Score(this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin:const EdgeInsets.only(bottom: 50),
            child: const Text(
              'Thank you for attending the survey!',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(20),
            hoverColor: Colors.blue,
            color: Colors.blueAccent,
            onPressed: reset,
            child: const Text(
              'Reset',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
