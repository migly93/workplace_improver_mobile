import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/models/user.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';
import 'package:workplace_improver_mobile/utils/utilities.dart';
import 'package:workplace_improver_mobile/widgets/clickable_widget/clickable_widget.dart';

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
    return ClickableWidget(
      child: CircleAvatar(
        backgroundImage: NetworkImage(user.imageUrl),
        backgroundColor: user.imageUrl == '' ? mainColor : secondaryColor,
        radius: radius,
        child: user.imageUrl == ''
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
