import 'package:flutter/material.dart';
import '../../../models/initiative.dart';
import '../../../models/user.dart';
import 'initiative_header_edit.dart';
import 'initiative_header_owner.dart';
import 'initiative_header_title.dart';

class InitiativeHeader extends StatelessWidget {
  final User loggedUser;
  final Initiative initiative;

  const InitiativeHeader({
    Key? key,
    required this.loggedUser,
    required this.initiative,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InitiativeHeaderOwner(
          owner: initiative.owner,
        ),
        InitiativeHeaderTitle(
          title: initiative.title,
        ),
        InitiativeHeaderEdit(
          loggedUser: loggedUser,
          initiative: initiative,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
