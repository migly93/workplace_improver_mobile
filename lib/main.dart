import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/initiative.dart';
import 'package:workplace_improver_mobile/services/initiative_service.dart';
import 'package:workplace_improver_mobile/summary.dart';
import 'models/initiative.dart' as model;
import 'service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final InitiativeService _initiativeService = getIt<InitiativeService>();
  //final List<model.Initiative> _initiatives = [];

  Future<List<model.Initiative>> loadData() async {
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
            child: FutureBuilder<List<model.Initiative>>(
                future: loadData(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<model.Initiative>> snapshot) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Summary(4, 2),
                        for (int i = 0; i < snapshot.data!.length; i++)
                          Initiative(snapshot.data![i]),
                      ],
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
