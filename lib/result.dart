import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;

  const Result(this.totalScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultPhrase = '';
    if (totalScore <= 12) {
      resultPhrase = 'Low score:';
    } else if (totalScore <= 15) {
      resultPhrase = 'Medium score:';
    } else {
      resultPhrase = 'Great score:';
    }
    return resultPhrase + ' $totalScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text('Restart!'),
          )
        ],
      ),
    );
  }
}
