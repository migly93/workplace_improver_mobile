import 'package:flutter/material.dart';
import '../user_profile/user_profile.dart';
import '../../models/initiative.dart';
import '../../models/user.dart';
import '../../utils/constants.dart';
import '../../utils/utilities.dart';
import '../clickable_widget/clickable_widget.dart';

class UserCircle extends StatelessWidget {
  final User loggedUser;
  final User user;
  final double radius;
  final bool clickable;
  final Initiative? initiative;

  const UserCircle({
    Key? key,
    required this.loggedUser,
    required this.user,
    required this.radius,
    required this.clickable,
    this.initiative,
  }) : super(key: key);

  void showUserProfile(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (_) {
          return DraggableScrollableSheet(
            initialChildSize: 0.95,
            builder: (_, controller) => UserProfile(
              loggedUser: loggedUser,
              profileToShow: user,
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final bool hasImage = user.imageUrl.isNotEmpty;
    return ClickableWidget(
      child: CircleAvatar(
        backgroundImage: hasImage ? NetworkImage(user.imageUrl) : null,
        backgroundColor: hasImage ? secondaryColor : mainColor,
        radius: radius,
        child: !hasImage
            ? Text(
                Utilities.getFullNameInitials(user.firstName, user.lastName),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: secondaryColor,
                  fontSize: radius - 2,
                ),
              )
            : null,
      ),
      onPressed: clickable && loggedUser.id != user.id
          ? () => showUserProfile(context)
          : null,
    );
  }
}
