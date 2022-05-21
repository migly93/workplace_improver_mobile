import 'package:flutter/cupertino.dart';
import '../../models/user.dart';
import '../initiatives/initiatives.dart';
import '../summary/summary.dart';

class HomePage extends StatelessWidget {
  final User loggedUser;

  const HomePage({
    Key? key,
    required this.loggedUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Summary(
            loggedUser: loggedUser,
          ),
          Initiatives(
            loggedUser: loggedUser,
          ),
        ],
      ),
    );
  }
}
