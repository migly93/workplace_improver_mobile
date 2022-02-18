import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  final int monthlyVotesLeft;
  final int activeInitiatives;

  String monthlyVotesLeftMessage = '';
  String activeInitiativesMessage = '';

  Summary(this.monthlyVotesLeft, this.activeInitiatives, {Key? key})
      : super(key: key) {
    monthlyVotesLeftMessage = 'You have $monthlyVotesLeft votes left.';
    activeInitiativesMessage =
        'You have $activeInitiatives active initiatives.';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          monthlyVotesLeftMessage,
          style: const TextStyle(
            color: Colors.pinkAccent,
          ),
        ),
        Text(
          activeInitiativesMessage,
          style: const TextStyle(
            color: Colors.pinkAccent,
          ),
        ),
      ],
    );
  }
}
