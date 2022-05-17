import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClickableWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const ClickableWidget({
    Key? key,
    required this.child,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: child,
      onPressed: onPressed,
      padding: EdgeInsets.zero,
    );
  }
}
