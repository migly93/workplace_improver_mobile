import 'package:flutter/material.dart';
import 'initiative_footer_tag.dart';

class InitiativeFooterTags extends StatelessWidget {
  final List<String> tags;

  const InitiativeFooterTags({
    Key? key,
    required this.tags,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: tags
            .take(3)
            .toList()
            .map((e) => InitiativeFooterTag(
                  tag: e,
                ))
            .toList(),
        mainAxisAlignment: MainAxisAlignment.start,
      ),
      width: 200,
      margin: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 8,
      ),
    );
  }
}
