import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class InitiativeDescription extends StatelessWidget {
  final String description;

  const InitiativeDescription({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      child: Text(
        description,
        style: TextStyle(
          color: mainGrey,
          fontFamily: mainFont,
          fontSize: 13 * mediaQuery.textScaleFactor,
          overflow: TextOverflow.fade,
        ),
        textAlign: TextAlign.justify,
      ),
      width: mediaQuery.size.width * 0.66,
      height: mediaQuery.size.height * 0.1,
      margin: const EdgeInsets.all(8),
    );
  }
}
