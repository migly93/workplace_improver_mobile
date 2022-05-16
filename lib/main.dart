import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'service_locator.dart';
import 'widgets/home_component/home_component.dart';

void main() {
  setupServiceLocator();
  runApp(const WorkplaceImprover());
}

class WorkplaceImprover extends StatelessWidget {
  const WorkplaceImprover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Workplace Improver',
      home: HomeComponent(),
    );
  }
}
