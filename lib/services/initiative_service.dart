import '../models/initiative.dart';

abstract class InitiativeService {
  Future<void> createInitiative(Initiative initiative);
  Future<List<Initiative>> getAll();
}
