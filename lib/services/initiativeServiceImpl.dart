import 'package:workplace_improver_mobile/initiative.dart';
import 'package:workplace_improver_mobile/models/InitiativeModel.dart';

import 'initiativeService.dart';

class InitiativeServiceImpl extends InitiativeService {
  @override
  Future<int> getCounterValue() async {
    return 11;
  }

  @override
  Future<void> saveCounterValue(int value) async {
    // do nothing
  }

  @override
  Future<List<InitiativeModel>> getAll() async {
     var initiatives = [
      InitiativeModel("Title 1", "Subtitle of initiative number 1"),
       InitiativeModel("Title 2", "Subtitle of initiative number 2"),
       InitiativeModel("Title 3", "Subtitle of initiative number 3")
    ];
    return initiatives;
  }
}
