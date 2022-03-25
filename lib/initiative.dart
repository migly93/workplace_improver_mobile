import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/initiative_footer.dart';
import 'package:workplace_improver_mobile/initiative_header.dart';
import 'package:workplace_improver_mobile/initiative_info.dart';
import 'package:workplace_improver_mobile/models/initiative.dart' as model;
import 'package:workplace_improver_mobile/utils/constants.dart';

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
          Container(
            child: Text(
              _initiative.description,
              style: const TextStyle(
                color: Colors.grey,
                fontFamily: 'Roboto',
                fontSize: 12,
                overflow: TextOverflow.fade,
              ),
              textAlign: TextAlign.justify,
            ),
            width: 260,
            height: 100,
            margin: const EdgeInsets.all(8),
          ),
          InitiativeFooter(
            _initiative.likes,
            _initiative.comments.length,
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
