import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class InitiativeDescription extends StatelessWidget {
  final String _description;

  const InitiativeDescription(
    this._description, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _description,
        style: const TextStyle(
          color: Colors.grey,
          fontFamily: mainFont,
          fontSize: 12,
          overflow: TextOverflow.fade,
        ),
        textAlign: TextAlign.justify,
      ),
      width: 260,
      height: 100,
      margin: const EdgeInsets.all(8),
    );
  }
}
