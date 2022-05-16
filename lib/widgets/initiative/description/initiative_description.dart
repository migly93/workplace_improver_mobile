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
    return Container(
      child: Text(
        description,
        style: TextStyle(
          color: mainGrey,
          fontFamily: mainFont,
          fontSize: 12,
          overflow: TextOverflow.fade,
        ),
        textAlign: TextAlign.justify,
      ),
      width: 260,
      height: 100,
      margin: const EdgeInsets.all(8),
    );
  }
}
