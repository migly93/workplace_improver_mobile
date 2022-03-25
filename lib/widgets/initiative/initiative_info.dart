import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

// ignore: must_be_immutable
class InitiativeInfo extends StatelessWidget {
  final String _status;
  final DateTime _creationDate;

  String dateText = '';

  InitiativeInfo(
    this._status,
    this._creationDate, {
    Key? key,
  }) : super(key: key) {
    dateText = "Created: " + DateFormat('dd-MM-yyyy').format(_creationDate);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(
              Icons.flag_outlined,
              color: mainColor,
              size: 20.0,
            ),
            Text(
              _status,
              style: TextStyle(
                color: mainColor,
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        Text(
          dateText,
          style: TextStyle(
            color: mainColor,
            fontFamily: mainFont,
          ),
          textAlign: TextAlign.center,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
