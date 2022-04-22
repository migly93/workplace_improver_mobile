import 'package:workplace_improver_mobile/models/initiative.dart';

abstract class InitiativeService {
  Future<int> getCounterValue();
  Future<void> createInitiative(Initiative initiative);

  Future<List<Initiative>> getAll();
}
