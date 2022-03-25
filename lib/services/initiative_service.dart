import 'package:workplace_improver_mobile/models/initiative.dart';

abstract class InitiativeService {
  Future<int> getCounterValue();
  Future<void> saveCounterValue(int value);

  Future<List<Initiative>> getAll();
}
