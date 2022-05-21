import 'package:flutter/cupertino.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

class InitiativeFormButton extends StatelessWidget {
  final bool isDisabled;
  final VoidCallback onPressed;

  const InitiativeFormButton(
      {required this.isDisabled, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton(
        child: const Text(
          'Let\'s go!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        disabledColor: lightGray,
        onPressed: isDisabled ? null : onPressed,
        color: mainColor,
      ),
      margin: const EdgeInsets.only(top: 36),
    );
  }
}
