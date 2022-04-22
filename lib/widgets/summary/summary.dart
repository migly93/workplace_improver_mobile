import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';
import 'package:workplace_improver_mobile/widgets/summary/summary_line.dart';

// ignore: must_be_immutable
class Summary extends StatelessWidget {
  final int _monthlyVotesLeft;
  final int _activeInitiatives;

  final String _firstPartText = "You have ";
  final String _secondPartTextVotes = " votes left.";
  final String _secondPartTextInitiatives = " active initiatives.";

  const Summary(this._monthlyVotesLeft, this._activeInitiatives, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SummaryLine(
            _monthlyVotesLeft,
            _firstPartText,
            _secondPartTextVotes,
          ),
          SummaryLine(
            _activeInitiatives,
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
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
    );
  }
}
