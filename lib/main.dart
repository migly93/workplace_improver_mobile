import 'package:flutter/material.dart';
import 'widgets/home_widget/home_widget.dart';
import 'service_locator.dart';

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
      home: HomeWidget(),
    );
  }
}
