import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/initiative.dart';
import 'package:workplace_improver_mobile/services/initiativeService.dart';
import 'package:workplace_improver_mobile/summary.dart';
import 'models/InitiativeModel.dart';
import 'service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  InitiativeService _initiativeService = getIt<InitiativeService>();
  List<InitiativeModel> _initiatives = [];

  Future<List<InitiativeModel>> loadData() async {
    return _initiativeService.getAll();
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: SafeArea(
            child: FutureBuilder<List<InitiativeModel>>(
                future: loadData(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<InitiativeModel>> snapshot) {
                  return Column(
                    children: [
                      Summary(4, 2),
                      for (int i = 0; i < snapshot.data!.length; i++)
                        Initiative(snapshot.data![i]),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
