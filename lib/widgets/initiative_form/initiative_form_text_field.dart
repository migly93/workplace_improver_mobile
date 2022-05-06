import 'package:flutter/cupertino.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

// ignore: must_be_immutable
class InitiativeFormTextField extends StatefulWidget {
  final String placeholder;
  final TextEditingController controller;
  final TextInputAction? textInputAction;
  final int? maxLines;
  final bool autofocus;
  final bool required;

  const InitiativeFormTextField({
    Key? key,
    required this.placeholder,
    required this.controller,
    this.textInputAction,
    this.maxLines,
    this.autofocus = false,
    this.required = true,
  }) : super(key: key);

  @override
  State<InitiativeFormTextField> createState() =>
      _InitiativeFormTextFieldState();
}

class _InitiativeFormTextFieldState extends State<InitiativeFormTextField> {
  final _focusNode = FocusNode();

  bool _touched = false;

  late BoxDecoration _boxDecoration = normalInputTextFieldBorder;

  @override
  void initState() {
    super.initState();
    _boxDecoration = normalInputTextFieldBorder;
    _focusNode.addListener(_changeTextFieldBorder);
    widget.controller.addListener(_changeTextFieldBorder);
  }

  _changeTextFieldBorder() {
    setState(() {
      bool isEmpty = widget.controller.text.isEmpty;
      bool hasFocus = _focusNode.hasFocus;
      _touched = _touched ? _touched : hasFocus;

      _boxDecoration = widget.required && _touched && isEmpty
          ? invalidInputTextFieldBorder
          : hasFocus
              ? vaildInputTextFieldBorder
              : normalInputTextFieldBorder;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoTextField(
        placeholder: widget.placeholder,
        autocorrect: true,
        decoration: _boxDecoration,
        padding: const EdgeInsets.all(8),
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        maxLines: widget.maxLines ?? 1,
        controller: widget.controller,
        autofocus: widget.autofocus,
        cursorColor: mainColor,
        focusNode: _focusNode,
      ),
      margin: const EdgeInsets.only(bottom: 16),
    );
  }
}
