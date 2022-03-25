import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/models/initiative.dart' as model;
import 'package:workplace_improver_mobile/widgets/initiative/initiative.dart';

class Initiatives extends StatelessWidget {
  final List<model.Initiative> _initiatives;
  const Initiatives(this._initiatives, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: _initiatives.map((e) => Initiative(e)).toList(),
      ),
    );
  }
}
