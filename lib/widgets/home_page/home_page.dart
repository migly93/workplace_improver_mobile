import 'package:flutter/cupertino.dart';
import 'package:workplace_improver_mobile/models/user.dart';
import 'package:workplace_improver_mobile/widgets/initiatives/initiatives.dart';
import 'package:workplace_improver_mobile/widgets/summary/summary.dart';

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
