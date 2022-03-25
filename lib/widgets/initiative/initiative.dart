import 'package:flutter/material.dart';
import 'description/initiative_description.dart';
import 'footer/initiative_footer.dart';
import '../../models/initiative.dart' as model;
import '../../utils/constants.dart';
import 'info/initiative_info.dart';
import 'header/initiative_header.dart';

class Initiative extends StatelessWidget {
  final model.Initiative _initiative;
  const Initiative(this._initiative, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          InitiativeHeader(
            _initiative.title,
            _initiative.owner,
          ),
          InitiativeInfo(
            _initiative.status,
            _initiative.creationDate,
          ),
          InitiativeDescription(_initiative.description),
          InitiativeFooter(
            _initiative.likes,
            _initiative.comments.length,
            _initiative.tags,
          ),
        ],
      ),
      elevation: 8,
      shadowColor: secondaryColor,
      margin: const EdgeInsets.all(20),
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        borderSide: BorderSide(color: Colors.white, width: 1),
      ),
    );
  }
}
