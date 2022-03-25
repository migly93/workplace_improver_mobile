import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/widgets/initiative/initiative_footer_tag.dart';

// ignore: must_be_immutable
class InitiativeFooterTags extends StatelessWidget {
  final List<String> _tags;
  List<String> _tagsToPrint = [];

  InitiativeFooterTags(
    this._tags, {
    Key? key,
  }) : super(key: key) {
    _tagsToPrint = _tags.take(3).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: _tagsToPrint.map((e) => InitiativeFooterTag(e)).toList(),
        mainAxisAlignment: MainAxisAlignment.start,
      ),
      width: 200,
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
    );
  }
}
