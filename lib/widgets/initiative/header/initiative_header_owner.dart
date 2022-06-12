import 'package:flutter/material.dart';
import '../../../models/initiative.dart';
import '../../user_circle/user_circle.dart';

class InitiativeHeaderOwner extends StatelessWidget {
  final bool isOwnerLoggedIn;
  final Initiative initiative;
  final bool clickableOwner;

  const InitiativeHeaderOwner({
    Key? key,
    required this.isOwnerLoggedIn,
    required this.initiative,
    required this.clickableOwner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: UserCircle(
        isLoggedUser: isOwnerLoggedIn,
        user: initiative.owner,
        clickable: clickableOwner,
        radius: 20,
      ),
      margin: const EdgeInsets.all(10),
    );
  }
}
