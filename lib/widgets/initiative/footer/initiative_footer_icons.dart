import 'package:flutter/material.dart';
import 'initiative_footer_icon.dart';

class InitiativeFooterIcons extends StatelessWidget {
  final int likes;
  final int comments;

  const InitiativeFooterIcons({
    Key? key,
    required this.likes,
    required this.comments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InitiativeFooterIcon(
          value: likes,
          icon: Icons.favorite_outline,
        ),
        InitiativeFooterIcon(
          value: comments,
          icon: Icons.comment_outlined,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
