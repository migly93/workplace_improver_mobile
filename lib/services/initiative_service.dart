import '../models/initiative.dart';

abstract class InitiativeService {
  Future<void> saveOrUpdate(Initiative initiative);
  Future<List<Initiative>> getAll();
  Future<List<Initiative>> getByUser(int userId);
}
