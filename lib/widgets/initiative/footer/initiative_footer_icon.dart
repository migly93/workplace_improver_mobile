import 'package:flutter/cupertino.dart';
import '../../../utils/constants.dart';

class InitiativeFooterIcon extends StatelessWidget {
  final int value;
  final IconData icon;

  const InitiativeFooterIcon({
    Key? key,
    required this.value,
    required this.icon,
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
              icon,
              color: mainColor,
            ),
            onPressed: null,
          ),
          Text(
            value.toString(),
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
