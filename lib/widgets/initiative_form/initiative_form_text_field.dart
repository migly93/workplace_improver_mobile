import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class InitiativeFormTextField extends StatelessWidget {
  final String placeholder;
  final TextInputAction textInputAction;
  final TextEditingController controller;
  int? maxLines;
  bool autofocus;

  InitiativeFormTextField({
    Key? key,
    required this.placeholder,
    required this.textInputAction,
    this.maxLines,
    required this.controller,
    this.autofocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoTextField(
        placeholder: placeholder,
        autocorrect: true,
        decoration: BoxDecoration(
          border: Border.all(
            color: CupertinoColors.lightBackgroundGray,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(8),
        textInputAction: textInputAction,
        maxLines: maxLines ?? 1,
        controller: controller,
        autofocus: autofocus,
      ),
      margin: const EdgeInsets.only(bottom: 16),
    );
  }
}
