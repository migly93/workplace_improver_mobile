import 'package:flutter/material.dart';
import '../../../models/initiative.dart';
import '../../../models/user.dart';
import '../../user_circle/user_circle.dart';

class InitiativeHeaderOwner extends StatelessWidget {
  final User loggedUser;
  final Initiative initiative;
  final bool clickableOwner;

  const InitiativeHeaderOwner({
    Key? key,
    required this.loggedUser,
    required this.initiative,
    required this.clickableOwner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: UserCircle(
        loggedUser: loggedUser,
        user: initiative.owner,
        initiative: initiative,
        clickable: clickableOwner,
        radius: 20,
      ),
      margin: const EdgeInsets.all(10),
    );
  }
}
