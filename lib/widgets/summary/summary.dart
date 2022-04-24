import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';
import 'package:workplace_improver_mobile/widgets/summary/summary_line.dart';

// ignore: must_be_immutable
class Summary extends StatelessWidget {
  final int? monthlyVotesLeft;
  final int? activeInitiatives;

  final String _firstPartText = "You have ";
  final String _secondPartTextVotes = " votes left.";
  final String _secondPartTextInitiatives = " active initiatives.";

  const Summary({
    Key? key,
    this.monthlyVotesLeft = 0,
    this.activeInitiatives = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SummaryLine(
            monthlyVotesLeft!,
            _firstPartText,
            _secondPartTextVotes,
          ),
          SummaryLine(
            activeInitiatives!,
            _firstPartText,
            _secondPartTextInitiatives,
          ),
          Divider(
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
