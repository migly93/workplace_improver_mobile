import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import 'summary_line.dart';

class Summary extends StatelessWidget {
  final int monthlyVotesLeft;
  final int activeInitiatives;

  final String _firstPartText = "You have ";
  final String _secondPartTextVotes = " votes left.";
  final String _secondPartTextInitiatives = " active initiatives.";

  const Summary({
    Key? key,
    required this.monthlyVotesLeft,
    required this.activeInitiatives,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SummaryLine(
            value: monthlyVotesLeft,
            firstPartText: _firstPartText,
            secondPartText: _secondPartTextVotes,
          ),
          SummaryLine(
            value: activeInitiatives,
            firstPartText: _firstPartText,
            secondPartText: _secondPartTextInitiatives,
          ),
          const Divider(
            color: mainGrey,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 4),
    );
  }
}
