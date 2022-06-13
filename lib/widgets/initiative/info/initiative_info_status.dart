import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/utilities.dart';
import '../../../models/initiative_status_enum.dart';
import '../../../utils/constants.dart';

class InitiativeInfoStatus extends StatelessWidget {
  final InitiativeStatusEnum status;

  const InitiativeInfoStatus({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Text(
            Utilities.getInitiativeStatusLabel(status),
            style: TextStyle(
              color: mainColor,
            ),
          ),
          margin: const EdgeInsets.only(right: 4),
        ),
        Icon(
          Utilities.getInitiativeStatusIcon(status),
          color: mainColor,
          size: 20.0,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
