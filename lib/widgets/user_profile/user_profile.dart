import 'package:flutter/widgets.dart';
import '../initiatives/initiatives.dart';
import '../../models/user.dart';
import '../user_circle/user_circle.dart';

class UserProfile extends StatelessWidget {
  final User loggedUser;
  final User? profileToShow;

  const UserProfile({
    Key? key,
    required this.loggedUser,
    this.profileToShow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          UserCircle(
            loggedUser: loggedUser,
            user: profileToShow ?? loggedUser,
            radius: 80,
            clickable: false,
          ),
          Initiatives(
            loggedUser: loggedUser,
            getDataByProfile: true,
            profileToSearch: profileToShow ?? loggedUser,
            clickableOwner: false,
          )
        ],
      ),
    );
  }
}
