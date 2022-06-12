import 'package:flutter/material.dart';
import '../../../models/initiative.dart';
import 'initiative_header_edit.dart';
import 'initiative_header_owner.dart';
import 'initiative_header_title.dart';

class InitiativeHeader extends StatelessWidget {
  final bool isOwnerLoggedIn;
  final Initiative initiative;
  final bool clickableOwner;

  const InitiativeHeader({
    Key? key,
    required this.isOwnerLoggedIn,
    required this.initiative,
    required this.clickableOwner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InitiativeHeaderOwner(
          isOwnerLoggedIn: isOwnerLoggedIn,
          initiative: initiative,
          clickableOwner: clickableOwner,
        ),
        InitiativeHeaderTitle(
          title: initiative.title,
        ),
        InitiativeHeaderEdit(
          isActive: isOwnerLoggedIn,
          initiative: initiative,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
