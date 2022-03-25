import 'package:flutter/material.dart';
import 'initiative_footer_icons.dart';
import 'initiative_footer_tags.dart';

class InitiativeFooter extends StatelessWidget {
  final int _likes;
  final int _comments;
  final List<String> _tags;

  const InitiativeFooter(
    this._likes,
    this._comments,
    this._tags, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          InitiativeFooterTags(_tags),
          InitiativeFooterIcons(_likes, _comments),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      margin: const EdgeInsets.all(8),
    );
  }
}
