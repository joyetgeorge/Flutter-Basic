import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() incrimentFunction;

  Answer(this.incrimentFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('answer 1'),
        onPressed: incrimentFunction,
      ),
    );
  }
}
