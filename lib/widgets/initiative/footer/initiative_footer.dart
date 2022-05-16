import 'package:flutter/material.dart';
import 'initiative_footer_icons.dart';
import 'initiative_footer_tags.dart';

class InitiativeFooter extends StatelessWidget {
  final int likes;
  final int comments;
  final List<String> tags;

  const InitiativeFooter({
    Key? key,
    required this.likes,
    required this.comments,
    required this.tags,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          InitiativeFooterTags(
            tags: tags,
          ),
          InitiativeFooterIcons(
            likes: likes,
            comments: comments,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      margin: const EdgeInsets.all(8),
    );
  }
}
