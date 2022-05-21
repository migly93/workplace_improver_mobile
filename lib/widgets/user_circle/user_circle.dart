import 'package:flutter/material.dart';
import '../../models/user.dart';
import '../../utils/constants.dart';
import '../../utils/utilities.dart';
import '../clickable_widget/clickable_widget.dart';

class UserCircle extends StatelessWidget {
  final User user;
  final double radius;
  final bool clickable;

  const UserCircle({
    Key? key,
    required this.user,
    required this.radius,
    this.clickable = true,
  }) : super(key: key);

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
      onPressed: clickable ? () {} : null,
    );
  }
}
