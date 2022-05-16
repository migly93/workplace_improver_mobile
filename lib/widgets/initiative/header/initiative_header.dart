import 'package:flutter/material.dart';
import '../../../models/user.dart';
import 'initiative_header_edit.dart';
import 'initiative_header_owner.dart';
import 'initiative_header_title.dart';

class InitiativeHeader extends StatelessWidget {
  final User loggedUser;
  final String title;
  final User owner;

  const InitiativeHeader({
    Key? key,
    required this.loggedUser,
    required this.title,
    required this.owner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InitiativeHeaderOwner(
          owner: owner,
        ),
        InitiativeHeaderTitle(
          title: title,
        ),
        InitiativeHeaderEdit(
          active: loggedUser.id == owner.id,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
