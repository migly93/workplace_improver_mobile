import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class InitiativeFormTitle extends StatelessWidget {
  const InitiativeFormTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      child: FittedBox(
        child: Text(
          "CHANGE YOUR COMPANY!",
          style: TextStyle(
            color: mainColor,
            fontSize:
                23 * mediaQuery.textScaleFactor * mediaQuery.size.width / 390,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      margin: EdgeInsets.symmetric(
        vertical:
            30 * mediaQuery.textScaleFactor * mediaQuery.size.height / 844,
      ),
    );
  }
}
