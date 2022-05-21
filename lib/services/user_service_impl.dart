import '../models/user.dart';
import 'user_service.dart';
import '../utils/constants.dart';

class UserServiceImpl extends UserService {
  @override
  User getLoggedUser() {
    return GIUSEPPE;
  }
}
