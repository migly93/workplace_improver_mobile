import '../models/user.dart';

abstract class UserService {
  User getLoggedUser();
}
