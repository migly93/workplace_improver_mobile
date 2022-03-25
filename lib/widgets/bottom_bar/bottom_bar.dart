import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/widgets/bottom_bar/bottom_bar_icon.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [
          BottomBarIcon(Icons.home_outlined),
          BottomBarIcon(Icons.add_outlined),
          BottomBarIcon(Icons.person_outline_rounded),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      margin: const EdgeInsets.all(12),
    );
  }
}
