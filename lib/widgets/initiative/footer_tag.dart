import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

class FooterTag extends StatelessWidget {
  final String _tag;

  const FooterTag(
    this._tag, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _tag,
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
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 6),
    );
  }
}
