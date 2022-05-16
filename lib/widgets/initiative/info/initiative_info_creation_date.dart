import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../utils/constants.dart';

class InitiativeInfoCreationDate extends StatelessWidget {
  final DateTime creationDate;

  const InitiativeInfoCreationDate({
    Key? key,
    required this.creationDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Created: ${DateFormat('dd-MM-yyyy').format(creationDate)}",
      style: TextStyle(
        color: mainColor,
        fontFamily: mainFont,
      ),
      textAlign: TextAlign.center,
    );
  }
}
