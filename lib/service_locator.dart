import 'services/initiative_service.dart';
import 'services/initiative_service_impl.dart';
import 'package:get_it/get_it.dart';
import 'services/user_service.dart';
import 'services/user_service_impl.dart';

final getIt = GetIt.instance;

setupServiceLocator() {
  getIt.registerLazySingleton<InitiativeService>(() => InitiativeServiceImpl());
  getIt.registerLazySingleton<UserService>(() => UserServiceImpl());
}
