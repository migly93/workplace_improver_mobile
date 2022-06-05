import 'package:flutter/material.dart';
import '../../../models/user.dart';
import '../../initiative_form/initiative_form.dart';
import '../../../models/initiative.dart';
import '../../../utils/constants.dart';

class InitiativeHeaderEdit extends StatelessWidget {
  final Initiative initiative;
  final User loggedUser;

  const InitiativeHeaderEdit({
    Key? key,
    required this.initiative,
    required this.loggedUser,
  }) : super(key: key);

  void editInitiative(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (_) {
          return InitiativeForm(
            loggedUser: loggedUser,
            initiative: initiative,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final active = loggedUser.id == initiative.owner.id;
    return Container(
      child: IconButton(
        icon: Icon(
          Icons.edit,
          color: active ? mainColor : secondaryColor,
          size: 26.0,
        ),
        onPressed: active ? () => editInitiative(context) : null,
      ),
      margin: const EdgeInsets.all(10),
    );
  }
}
