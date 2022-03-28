import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class InitiativeFooterIcon extends StatelessWidget {
  final int _number;
  final IconData _icon;

  const InitiativeFooterIcon(
    this._number,
    this._icon, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CupertinoButton(
            minSize: 28,
            padding: EdgeInsets.zero,
            child: Icon(
              _icon,
              color: mainColor,
            ),
            onPressed: null,
          ),
          Text(
            _number.toString(),
            style: TextStyle(
              color: mainColor,
            ),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 3),
    );
  }
}
