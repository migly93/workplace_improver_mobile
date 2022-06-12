import 'package:flutter/widgets.dart';
import '../initiatives/initiatives.dart';
import '../../models/user.dart';
import '../user_circle/user_circle.dart';

class UserProfile extends StatelessWidget {
  final bool isLoggedUser;
  final User user;

  const UserProfile({
    Key? key,
    required this.isLoggedUser,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          UserCircle(
            isLoggedUser: isLoggedUser,
            user: user,
            radius: 80,
            clickable: false,
          ),
          Initiatives(
            getDataByProfile: true,
            profileToSearch: user,
            clickableOwner: false,
          )
        ],
      ),
    );
  }
}
