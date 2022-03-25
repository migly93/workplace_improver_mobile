import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/widgets/initiative/footer_icon.dart';
import 'package:workplace_improver_mobile/widgets/initiative/footer_tags.dart';

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
          FooterTags(_tags),
          FooterIcon(_likes, Icons.favorite_outline),
          FooterIcon(_comments, Icons.reply_outlined),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      margin: const EdgeInsets.all(8),
    );
  }
}