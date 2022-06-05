import '../models/initiative.dart';

abstract class InitiativeService {
  Future<void> saveOrUpdate(Initiative initiative);
  Future<List<Initiative>> getAll();
}
