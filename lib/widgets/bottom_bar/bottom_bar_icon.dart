import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

class BottomBarIcon extends StatelessWidget {
  final IconData _icon;

  const BottomBarIcon(
    this._icon, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      _icon,
      color: mainColor,
      size: 40,
    );
  }
}
