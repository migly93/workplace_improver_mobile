import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

class FooterIcon extends StatelessWidget {
  final int _number;
  final IconData _icon;

  const FooterIcon(
    this._number,
    this._icon, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            _icon,
            color: mainColor,
            size: 28.0,
          ),
          Text(
            _number.toString(),
            style: TextStyle(
              color: mainColor,
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
    );
  }
}
