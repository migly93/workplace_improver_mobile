import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class InitiativeFooterTag extends StatelessWidget {
  final String tag;

  const InitiativeFooterTag({
    Key? key,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        tag,
        style: TextStyle(
          color: mainColor,
          fontFamily: mainFont,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          overflow: TextOverflow.fade,
        ),
        textAlign: TextAlign.justify,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 6,
      ),
    );
  }
}
