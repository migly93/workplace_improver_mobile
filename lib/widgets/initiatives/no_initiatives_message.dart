import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

class NoInitiativesMessage extends StatelessWidget {
  final String _message =
      "There are no inititives to display \n Create a new initiative!";

  const NoInitiativesMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _message,
      style: const TextStyle(
        color: mainGrey,
      ),
      textAlign: TextAlign.center,
    );
  }
}
