import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/models/initiative.dart' as model;
import 'package:workplace_improver_mobile/services/initiative_service.dart';
import 'package:workplace_improver_mobile/widgets/initiative/initiative.dart';

import '../../service_locator.dart';

class Initiatives extends StatelessWidget {
  final InitiativeService _initiativeService = getIt<InitiativeService>();

  Future<List<model.Initiative>> loadData() async {
    return _initiativeService.getAll();
  }

  Initiatives({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    loadData();
    return FutureBuilder<List<model.Initiative>>(
        future: loadData(),
        builder: (BuildContext context,
            AsyncSnapshot<List<model.Initiative>> response) {
          return Expanded(
            child: ListView(
              children: response.data!.map((e) => Initiative(e)).toList(),
            ),
          );
        });
  }
}
