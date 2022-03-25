import 'package:flutter/material.dart';
import 'initiative_footer_icon.dart';

class InitiativeFooterIcons extends StatelessWidget {
  final int _likes;
  final int _comments;

  const InitiativeFooterIcons(
    this._likes,
    this._comments, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InitiativeFooterIcon(_likes, Icons.favorite_outline),
        InitiativeFooterIcon(_comments, Icons.comment_outlined),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
