import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/models/user.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';
import 'package:workplace_improver_mobile/utils/utilities.dart';

// ignore: must_be_immutable
class UserCircle extends StatelessWidget {
  final User _user;
  final double _radius;

  String initials = '';
  UserCircle(
    this._user,
    this._radius, {
    Key? key,
  }) : super(key: key) {
    initials = Utilities.getFirstLetter(_user.firstName) +
        Utilities.getFirstLetter(_user.lastName);
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(_user.imageUrl),
      backgroundColor: _user.imageUrl == '' ? mainColor : secondaryColor,
      radius: _radius,
      child: _user.imageUrl == ''
          ? Text(
              initials,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              ),
            )
          : null,
    );
  }
}
