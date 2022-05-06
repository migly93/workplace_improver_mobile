import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final Color mainColor = Colors.red.shade300;
final Color secondaryColor = Colors.white;
final Color mainGrey = Colors.grey;
final Color validFieldGreen = Colors.greenAccent.shade100;
final Color invalidFieldRed = Colors.redAccent.shade100;
const Color lightGray = CupertinoColors.lightBackgroundGray;
const String mainFont = 'Roboto';

final BoxDecoration normalInputTextFieldBorder = BoxDecoration(
  border: Border.all(
    color: lightGray,
    width: 2,
  ),
  borderRadius: BorderRadius.circular(10),
);

final BoxDecoration vaildInputTextFieldBorder = BoxDecoration(
  border: Border.all(
    color: validFieldGreen,
    width: 3,
  ),
  borderRadius: BorderRadius.circular(10),
);

final BoxDecoration invalidInputTextFieldBorder = BoxDecoration(
  border: Border.all(
    color: invalidFieldRed,
    width: 3,
  ),
  borderRadius: BorderRadius.circular(10),
);
