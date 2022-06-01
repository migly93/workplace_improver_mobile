import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'utils/constants.dart';
import 'widgets/home_widget/home_widget.dart';
import 'service_locator.dart';

void main() {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const WorkplaceImprover());
}

class WorkplaceImprover extends StatelessWidget {
  const WorkplaceImprover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workplace Improver',
      routes: {
        homeRoute: (context) => const HomeWidget(),
      },
    );
  }
}
