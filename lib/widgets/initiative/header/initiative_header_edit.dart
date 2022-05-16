import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class InitiativeHeaderEdit extends StatelessWidget {
  final bool active;

  const InitiativeHeaderEdit({
    Key? key,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(
          Icons.edit,
          color: active ? mainColor : secondaryColor,
          size: 26.0,
        ),
        onPressed: active ? () {} : null,
      ),
      margin: const EdgeInsets.all(10),
    );
  }
}
