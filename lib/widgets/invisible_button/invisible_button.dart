import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InvisibleButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  String initials = '';
  InvisibleButton(
    this.child,
    this.onPressed, {
    Key? key,
  }) : super(key: key);

  double opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: child,
      onPressed: onPressed,
      padding: EdgeInsets.zero,
    );
  }
}
