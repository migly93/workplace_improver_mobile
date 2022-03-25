import 'package:flutter/material.dart';

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
          fontFamily: 'Roboto',
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
