import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavBarIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  double? size;

  BottomNavBarIcon(
      {Key? key, required this.icon, required this.color, this.size = 34})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: size ?? 30,
    );
  }
}
