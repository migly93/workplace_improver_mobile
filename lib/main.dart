import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/services/initiative_service.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';
import 'package:workplace_improver_mobile/widgets/bottom_bar/bottom_bar.dart';
import 'package:workplace_improver_mobile/widgets/summary/summary.dart';
import 'package:workplace_improver_mobile/widgets/initiatives/initiatives.dart';
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
                  return Column(
                    children: [
                      const Summary(4, 2),
                      Divider(
                        color: mainGrey,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Initiatives(snapshot.data!),
                      const BottomBar(),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
