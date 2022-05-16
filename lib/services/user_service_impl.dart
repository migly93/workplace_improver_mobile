import 'package:workplace_improver_mobile/models/user.dart';
import 'package:workplace_improver_mobile/services/user_service.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

class UserServiceImpl extends UserService {
  @override
  User getLoggedUser() {
    return GIUSEPPE;
  }
}
