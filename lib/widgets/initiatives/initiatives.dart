import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/models/initiative.dart' as model;
import 'package:workplace_improver_mobile/services/initiative_service.dart';
import 'package:workplace_improver_mobile/widgets/initiative/initiative.dart';
import 'package:workplace_improver_mobile/widgets/initiatives/no_initiatives_message.dart';

import '../../service_locator.dart';

class Initiatives extends StatelessWidget {
  final InitiativeService _initiativeService = getIt<InitiativeService>();

  Future<List<model.Initiative>> loadData() async {
    return _initiativeService.getAll();
  }

  Initiatives({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<model.Initiative>>(
      future: loadData(),
      builder: (context, snapshot) {
        return snapshot.hasData && snapshot.data!.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => Initiative(snapshot.data![index]),
                ),
              )
            : const NoInitiativesMessage();
      },
    );
  }
}
