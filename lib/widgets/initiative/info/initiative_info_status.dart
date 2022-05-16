import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class InitiativeInfoStatus extends StatelessWidget {
  final String status;

  const InitiativeInfoStatus({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.flag_outlined,
          color: mainColor,
          size: 20.0,
        ),
        Text(
          status,
          style: TextStyle(
            color: mainColor,
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
