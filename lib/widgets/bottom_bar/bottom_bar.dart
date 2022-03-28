import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/models/user.dart';
import 'package:workplace_improver_mobile/widgets/bottom_bar/bottom_bar_icon.dart';
import 'package:workplace_improver_mobile/widgets/user_circle/user_circle.dart';

class BottomBar extends StatelessWidget {
  final User _user;
  const BottomBar(
    this._user, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const BottomBarIcon(Icons.home_outlined),
          const BottomBarIcon(Icons.add_circle_outlined),
          UserCircle(_user, 20),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      margin: const EdgeInsets.all(12),
    );
  }
}
