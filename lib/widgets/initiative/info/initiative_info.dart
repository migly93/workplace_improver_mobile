import 'package:flutter/material.dart';
import '../../../models/initiative_status_enum.dart';
import 'initiative_info_creation_date.dart';
import 'initiative_info_status.dart';

class InitiativeInfo extends StatelessWidget {
  final InitiativeStatusEnum status;
  final DateTime creationDate;

  const InitiativeInfo({
    Key? key,
    required this.status,
    required this.creationDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InitiativeInfoStatus(
          status: status,
        ),
        InitiativeInfoCreationDate(
          creationDate: creationDate,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
