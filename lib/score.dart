import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Thank you for attending the surway surway!',
        style: TextStyle(
          fontSize: 19,
        ),
      ),
    );
  }
}
