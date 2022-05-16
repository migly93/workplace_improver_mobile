import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class InitiativeHeaderTitle extends StatelessWidget {
  final String title;

  const InitiativeHeaderTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: mainColor,
        fontFamily: mainFont,
        fontSize: 20,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
