import 'package:flutter/material.dart';
import '../../models/user.dart';
import 'description/initiative_description.dart';
import 'footer/initiative_footer.dart';
import '../../models/initiative.dart' as model;
import '../../utils/constants.dart';
import 'info/initiative_info.dart';
import 'header/initiative_header.dart';

class Initiative extends StatelessWidget {
  final User loggedUser;
  final model.Initiative initiative;
  final bool clickableOwner;

  const Initiative({
    Key? key,
    required this.initiative,
    required this.loggedUser,
    required this.clickableOwner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          InitiativeHeader(
            isOwnerLoggedIn: loggedUser.id == initiative.owner.id,
            initiative: initiative,
            clickableOwner: clickableOwner,
          ),
          InitiativeInfo(
            status: initiative.status,
            creationDate: initiative.creationDate,
          ),
          InitiativeDescription(
            description: initiative.description,
          ),
          InitiativeFooter(
            likes: initiative.likes,
            comments: initiative.comments.length,
            tags: initiative.tags,
          ),
        ],
      ),
      elevation: 8,
      shadowColor: secondaryColor,
      margin: const EdgeInsets.all(20),
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
        borderSide: BorderSide(
          color: secondaryColor,
          width: 1,
        ),
      ),
    );
  }
}
