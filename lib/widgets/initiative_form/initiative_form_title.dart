import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

class InitiativeFormTitle extends StatelessWidget {
  const InitiativeFormTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "CHANGE YOUR COMPANY!",
        style: TextStyle(
          color: mainColor,
          fontSize: 23,
          fontWeight: FontWeight.w900,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 48),
    );
  }
}
