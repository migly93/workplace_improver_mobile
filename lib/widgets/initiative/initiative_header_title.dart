import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

// ignore: must_be_immutable
class InitiativeHeaderTitle extends StatelessWidget {
  final String _title;
  String initials = '';
  InitiativeHeaderTitle(
    this._title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: TextStyle(
        color: mainColor,
        fontFamily: mainFont,
        fontSize: 20,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
