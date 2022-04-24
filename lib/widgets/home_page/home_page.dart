import 'package:flutter/cupertino.dart';
import 'package:workplace_improver_mobile/widgets/initiatives/initiatives.dart';
import 'package:workplace_improver_mobile/widgets/summary/summary.dart';

class HomePage extends StatelessWidget {
  final int? monthlyVotesLeft;
  final int? activeInitiatives;

  const HomePage({
    Key? key,
    this.monthlyVotesLeft = 0,
    this.activeInitiatives = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            Summary(
              monthlyVotesLeft: monthlyVotesLeft,
              activeInitiatives: activeInitiatives,
            ),
            Initiatives(),
          ],
        ),
      ),
    );
  }
}
