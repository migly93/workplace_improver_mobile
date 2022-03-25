import 'package:flutter/material.dart';
import '../../../models/user.dart';
import '../../user_circle/user_circle.dart';

// ignore: must_be_immutable
class InitiativeHeaderOwner extends StatelessWidget {
  final User _owner;
  String initials = '';
  InitiativeHeaderOwner(
    this._owner, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: UserCircle(_owner, 16),
      margin: const EdgeInsets.all(10),
    );
  }
}
