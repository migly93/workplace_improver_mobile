import 'package:flutter/material.dart';

class BottomNavBarIcon extends StatelessWidget {
  final IconData _icon;
  final Color _color;

  const BottomNavBarIcon(
    this._icon,
    this._color, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      _icon,
      color: _color,
      size: 40,
    );
  }
}
