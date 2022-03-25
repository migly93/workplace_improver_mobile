import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

// ignore: must_be_immutable
class InitiativeInfoStatus extends StatelessWidget {
  final String _status;

  String dateText = '';

  InitiativeInfoStatus(
    this._status, {
    Key? key,
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
          _status,
          style: TextStyle(
            color: mainColor,
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
