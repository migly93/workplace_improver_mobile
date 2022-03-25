import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

// ignore: must_be_immutable
class SummaryLine extends StatelessWidget {
  final int _numberValue;
  final String _firstPartText;
  final String _secondPartText;

  const SummaryLine(
      this._numberValue, this._firstPartText, this._secondPartText,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          color: mainColor,
          fontFamily: mainFont,
          fontSize: 18,
          fontStyle: FontStyle.italic,
          overflow: TextOverflow.fade,
        ),
        children: <TextSpan>[
          TextSpan(text: _firstPartText),
          TextSpan(
            text: _numberValue.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: _secondPartText),
        ],
      ),
    );
  }
}
