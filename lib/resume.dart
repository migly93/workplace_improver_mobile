import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  final int monthlyVotesLeft;
  final int activeInitiatives;

  String monthlyVotesLeftMessage = '';
  String activeInitiativesMessage = '';

  Resume(this.monthlyVotesLeft, this.activeInitiatives, {Key? key})
      : super(key: key) {
    monthlyVotesLeftMessage = 'You have $monthlyVotesLeft votes left.';
    activeInitiativesMessage =
        'You have $activeInitiatives active initiatives.';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(monthlyVotesLeftMessage),
        Text(activeInitiativesMessage),
      ],
    );
  }
}
