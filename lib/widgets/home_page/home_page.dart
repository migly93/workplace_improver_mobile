import 'package:flutter/cupertino.dart';
import '../initiatives/initiatives.dart';
import '../summary/summary.dart';

class HomePage extends StatelessWidget {
  final int monthlyVotesLeft;
  final int activeInitiatives;

  const HomePage({
    Key? key,
    required this.monthlyVotesLeft,
    required this.activeInitiatives,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Summary(
            monthlyVotesLeft: monthlyVotesLeft,
            activeInitiatives: activeInitiatives,
          ),
          Initiatives(),
        ],
      ),
    );
  }
}
