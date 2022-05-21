import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/models/user.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';
import 'package:workplace_improver_mobile/widgets/summary/summary_line.dart';

class Summary extends StatelessWidget {
  final User loggedUser;

  final String _firstPartText = "You have ";
  final String _secondPartTextVotes = " votes left.";
  final String _secondPartTextInitiatives = " active initiatives.";

  const Summary({
    Key? key,
    required this.loggedUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SummaryLine(
            value: loggedUser.monthlyVotesLeft,
            firstPartText: _firstPartText,
            secondPartText: _secondPartTextVotes,
          ),
          SummaryLine(
            value: loggedUser.activeInitiatives,
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
