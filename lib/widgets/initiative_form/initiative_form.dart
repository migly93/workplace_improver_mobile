import 'package:flutter/cupertino.dart';
import 'package:workplace_improver_mobile/models/initiative.dart';
import 'package:workplace_improver_mobile/models/user.dart';
import 'package:workplace_improver_mobile/service_locator.dart';
import 'package:workplace_improver_mobile/services/initiative_service.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';

// ignore: must_be_immutable
class InitiativeForm extends StatelessWidget {
  final InitiativeService _initiativeService = getIt<InitiativeService>();
  final Function backToHome;

  Initiative? initiative;

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController tagsController = TextEditingController();

  InitiativeForm({
    Key? key,
    this.initiative,
    required this.backToHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Text(
              "CHANGE YOUR COMPANY!",
              style: TextStyle(
                color: mainColor,
                fontSize: 23,
                fontWeight: FontWeight.w900,
              ),
            ),
            margin: const EdgeInsets.symmetric(vertical: 48),
          ),
          Container(
            child: CupertinoTextField(
              placeholder: "Title",
              autocorrect: true,
              decoration: BoxDecoration(
                border: Border.all(
                  color: CupertinoColors.lightBackgroundGray,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              controller: titleController,
              padding: const EdgeInsets.all(8),
              textInputAction: TextInputAction.next,
            ),
            margin: const EdgeInsets.only(bottom: 16),
          ),
          Container(
            child: CupertinoTextField(
              placeholder: "Description",
              autocorrect: true,
              decoration: BoxDecoration(
                border: Border.all(
                  color: CupertinoColors.lightBackgroundGray,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              controller: descriptionController,
              padding: const EdgeInsets.all(8),
              textInputAction: TextInputAction.next,
              maxLines: 8,
            ),
            margin: const EdgeInsets.only(bottom: 16),
          ),
          Container(
            child: CupertinoTextField(
              placeholder: "Tags",
              autocorrect: true,
              decoration: BoxDecoration(
                border: Border.all(
                  color: CupertinoColors.lightBackgroundGray,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              controller: tagsController,
              padding: const EdgeInsets.all(8),
              textInputAction: TextInputAction.next,
            ),
            margin: const EdgeInsets.only(bottom: 16),
          ),
          Container(
            child: CupertinoButton(
              child: const Text(
                'Let\'s go!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              disabledColor: disabledColor,
              onPressed: () {
                final initiative = Initiative(
                  title: titleController.text,
                  description: descriptionController.text,
                  tags: tagsController.text.split(" "),
                  status: 'Created',
                  owner: User(
                    firstName: 'Giuseppe',
                    lastName: 'Migliaccio',
                    imageUrl:
                        'https://cdn.dribbble.com/users/81809/screenshots/3347540/gokussj.jpg',
                  ),
                );
                _initiativeService.createInitiative(initiative);
                backToHome(0);
              },
              color: mainColor,
            ),
            margin: const EdgeInsets.only(top: 36),
          ),
        ],
      ),
      margin: const EdgeInsets.only(top: 36),
      padding: const EdgeInsets.symmetric(horizontal: 32),
    );
  }
}
