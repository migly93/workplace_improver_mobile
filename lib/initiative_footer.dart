import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

class InitiativeFooter extends StatelessWidget {
  final int _likes;
  final int _comments;

  const InitiativeFooter(
    this._likes,
    this._comments, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Row(
            children: [
              const Icon(
                Icons.favorite_border_outlined,
                color: mainColor,
                size: 28.0,
              ),
              Text(
                _likes.toString(),
                style: const TextStyle(
                  color: mainColor,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Container(
            child: Row(
              children: [
                const Icon(
                  Icons.reply,
                  color: mainColor,
                  size: 28.0,
                ),
                Text(
                  _comments.toString(),
                  style: const TextStyle(
                    color: mainColor,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      ),
      margin: const EdgeInsets.all(8),
    );
  }
}
