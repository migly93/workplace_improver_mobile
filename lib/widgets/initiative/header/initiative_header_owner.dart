import 'package:flutter/material.dart';
import '../../../models/user.dart';
import '../../user_circle/user_circle.dart';

class InitiativeHeaderOwner extends StatelessWidget {
  final User owner;

  const InitiativeHeaderOwner({
    Key? key,
    required this.owner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: UserCircle(
        user: owner,
        radius: 20,
      ),
      margin: const EdgeInsets.all(10),
    );
  }
}
