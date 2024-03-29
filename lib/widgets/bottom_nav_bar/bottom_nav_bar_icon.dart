import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class BottomNavBarIcon extends StatelessWidget {
  final IconData icon;
  final bool pressed;

  const BottomNavBarIcon({
    Key? key,
    required this.icon,
    required this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: pressed ? mainColor : mainGrey,
      size: pressed ? 36 : 30,
    );
  }
}
