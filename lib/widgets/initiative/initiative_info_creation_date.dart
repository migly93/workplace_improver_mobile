import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

// ignore: must_be_immutable
class InitiativeInfoCreationDate extends StatelessWidget {
  final DateTime _creationDate;

  String dateText = '';

  InitiativeInfoCreationDate(
    this._creationDate, {
    Key? key,
  }) : super(key: key) {
    dateText = "Created: " + DateFormat('dd-MM-yyyy').format(_creationDate);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      dateText,
      style: TextStyle(
        color: mainColor,
        fontFamily: mainFont,
      ),
      textAlign: TextAlign.center,
    );
  }
}
