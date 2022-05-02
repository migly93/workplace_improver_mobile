import 'package:flutter/cupertino.dart';
import 'package:workplace_improver_mobile/models/initiative.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';
import 'package:workplace_improver_mobile/widgets/initiative_form/initiative_form_text_field.dart';

// ignore: must_be_immutable
class InitiativeForm extends StatelessWidget {
  Initiative? initiative;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController tagsController = TextEditingController();

  InitiativeForm({
    Key? key,
    this.initiative,
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
          InitiativeFormTextField(
            placeholder: "Title",
            textInputAction: TextInputAction.next,
            controller: titleController,
            autofocus: true,
          ),
          InitiativeFormTextField(
            placeholder: "Description",
            textInputAction: TextInputAction.newline,
            maxLines: 8,
            controller: descriptionController,
          ),
          InitiativeFormTextField(
            placeholder: "Tags",
            textInputAction: TextInputAction.next,
            controller: tagsController,
          ),
          Container(
            child: CupertinoButton(
              child: const Text(
                'Let\'s go!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () => {},
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
