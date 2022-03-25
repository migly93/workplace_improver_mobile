import 'package:workplace_improver_mobile/services/initiative_service.dart';
import 'package:workplace_improver_mobile/services/initiative_service_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupServiceLocator() {
  getIt.registerLazySingleton<InitiativeService>(() => InitiativeServiceImpl());
}
