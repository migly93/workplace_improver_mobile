import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/models/user.dart';
import 'package:workplace_improver_mobile/utils/utilities.dart';
import 'package:workplace_improver_mobile/widgets/initiative/initiative_header_edit.dart';
import 'package:workplace_improver_mobile/widgets/initiative/initiative_header_owner.dart';
import 'package:workplace_improver_mobile/widgets/initiative/initiative_header_title.dart';

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
        InitiativeHeaderOwner(_owner),
        InitiativeHeaderTitle(_title),
        InitiativeHeaderEdit()
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
