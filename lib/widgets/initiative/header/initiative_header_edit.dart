import 'package:flutter/material.dart';
import '../../initiative_form/initiative_form.dart';
import '../../../models/initiative.dart';
import '../../../utils/constants.dart';

class InitiativeHeaderEdit extends StatelessWidget {
  final Initiative initiative;
  final bool isActive;

  const InitiativeHeaderEdit({
    Key? key,
    required this.initiative,
    required this.isActive,
  }) : super(key: key);

  void editInitiative(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (_) {
          return InitiativeForm(
            initiative: initiative,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(
          Icons.edit,
          color: isActive ? mainColor : secondaryColor,
          size: 26.0,
        ),
        onPressed: isActive ? () => editInitiative(context) : null,
      ),
      margin: const EdgeInsets.all(10),
    );
  }
}
