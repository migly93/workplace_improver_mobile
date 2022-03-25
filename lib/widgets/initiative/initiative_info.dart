import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workplace_improver_mobile/widgets/initiative/initiative_info_creation_date.dart';
import 'package:workplace_improver_mobile/widgets/initiative/initiative_info_status.dart';

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
        InitiativeInfoStatus(_status),
        InitiativeInfoCreationDate(_creationDate),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
