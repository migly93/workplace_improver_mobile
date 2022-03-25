import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/models/user.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';
import 'package:workplace_improver_mobile/utils/utilities.dart';

// ignore: must_be_immutable
class InitiativeHeader extends StatelessWidget {
  final String _title;
  final User _owner;
  String initials = '';
  InitiativeHeader(
    this._title,
    this._owner, {
    Key? key,
  }) : super(key: key) {
    initials = Utilities.getFirstLetter(_owner.firstName) +
        Utilities.getFirstLetter(_owner.lastName);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: CircleAvatar(
            backgroundColor: mainColor,
            radius: 16,
            child: Text(
              initials,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              ),
            ),
          ),
          margin: const EdgeInsets.all(10),
        ),
        Text(
          _title,
          style: TextStyle(
            color: mainColor,
            fontFamily: mainFont,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          child: Icon(
            Icons.edit,
            color: mainColor,
            size: 26.0,
          ),
          margin: const EdgeInsets.all(10),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
