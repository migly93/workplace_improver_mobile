import 'package:workplace_improver_mobile/services/initiativeService.dart';
import 'package:workplace_improver_mobile/services/initiativeServiceImpl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupServiceLocator() {
  getIt.registerLazySingleton<InitiativeService>(() => InitiativeServiceImpl());
}