
import 'package:workplace_improver_mobile/models/InitiativeModel.dart';

abstract class InitiativeService {

  Future<int> getCounterValue();
  Future<void> saveCounterValue(int value);

  Future<List<InitiativeModel>> getAll();

}