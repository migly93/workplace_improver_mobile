import 'package:flutter/widgets.dart';
import 'package:workplace_improver_mobile/models/user.dart';
import 'package:workplace_improver_mobile/widgets/user_circle/user_circle.dart';

class UserProfile extends StatelessWidget {
  final User loggedUser;

  const UserProfile({
    Key? key,
    required this.loggedUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          UserCircle(
            user: loggedUser,
            radius: 80,
            clickable: false,
          ),
          const Text(
            "Coming Soon!",
          ),
        ],
      ),
    );
  }
}
