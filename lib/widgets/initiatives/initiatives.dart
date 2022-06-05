import 'package:flutter/material.dart';
import '../../models/initiative.dart' as model;
import '../../models/user.dart';
import '../../services/initiative_service.dart';
import '../initiative/initiative.dart';
import 'no_initiatives_message.dart';
import '../../service_locator.dart';

class Initiatives extends StatelessWidget {
  final User loggedUser;
  final bool getDataByProfile;
  final User? profileToSearch;
  final bool clickableOwner;

  final InitiativeService _initiativeService = getIt<InitiativeService>();

  Future<List<model.Initiative>> loadData() async {
    return getDataByProfile
        ? _initiativeService.getByUser(profileToSearch!.id)
        : _initiativeService.getAll();
  }

  Initiatives({
    Key? key,
    required this.loggedUser,
    this.getDataByProfile = false,
    this.clickableOwner = true,
    this.profileToSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<model.Initiative>>(
      future: loadData(),
      builder: (context, snapshot) {
        return snapshot.hasData && snapshot.data!.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => Initiative(
                    initiative: snapshot.data![index],
                    loggedUser: loggedUser,
                    clickableOwner: clickableOwner,
                  ),
                ),
              )
            : const NoInitiativesMessage();
      },
    );
  }
}
