import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

class SummaryLine extends StatelessWidget {
  final int value;
  final String firstPartText;
  final String secondPartText;

  const SummaryLine({
    Key? key,
    required this.value,
    required this.firstPartText,
    required this.secondPartText,
  }) : super(key: key);

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
          TextSpan(
            text: firstPartText,
          ),
          TextSpan(
            text: value.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: secondPartText,
          ),
        ],
      ),
    );
  }
}
