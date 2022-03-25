import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

// ignore: must_be_immutable
class InitiativeHeaderEdit extends StatelessWidget {
  String initials = '';
  InitiativeHeaderEdit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.edit,
        color: mainColor,
        size: 26.0,
      ),
      margin: const EdgeInsets.all(10),
    );
  }
}
