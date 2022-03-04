import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/models/InitiativeModel.dart';

class Initiative extends StatelessWidget {
  final InitiativeModel _initiativeData;
  const Initiative(this._initiativeData, {Key? key}) : super(key: key);


   @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          this._initiativeData.title,
          style: TextStyle(
            color: Colors.pinkAccent,
            fontFamily: 'Roboto',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        subtitle: Text(
          this._initiativeData.subtitle,
          style: TextStyle(
            color: Colors.grey,
            fontFamily: 'Roboto',
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      elevation: 8,
      shadowColor: Colors.white,
      margin: EdgeInsets.all(20),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        borderSide: BorderSide(color: Colors.white, width: 1),
      ),
    );
  }
}
