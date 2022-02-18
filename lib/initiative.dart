import 'package:flutter/material.dart';

class Initiative extends StatelessWidget {
  const Initiative({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        title: Text(
          "New Macbook",
          style: TextStyle(
            color: Colors.pinkAccent,
            fontFamily: 'Roboto',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        subtitle: Text(
          "Long string with things fjbefgberglberberbervhbervhbervherbvherbvherbvelrhverhvrehvberhvbrehjfrehjfvrhvf",
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
