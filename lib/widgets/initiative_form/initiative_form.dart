import 'package:flutter/cupertino.dart';
import 'package:workplace_improver_mobile/models/initiative.dart';
import 'package:workplace_improver_mobile/models/user.dart';
import 'package:workplace_improver_mobile/service_locator.dart';
import 'package:workplace_improver_mobile/services/initiative_service.dart';
import 'package:workplace_improver_mobile/widgets/initiative_form/initiative_form_button.dart';
import 'package:workplace_improver_mobile/widgets/initiative_form/initiative_form_text_field.dart';
import 'package:workplace_improver_mobile/widgets/initiative_form/initiative_form_title.dart';

// ignore: must_be_immutable
class InitiativeForm extends StatefulWidget {
  final Function backToHome;

  Initiative? initiative;

  InitiativeForm({
    Key? key,
    this.initiative,
    required this.backToHome,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _InitiativeFormState();
  }
}

class _InitiativeFormState extends State<InitiativeForm> {
  final _initiativeService = getIt<InitiativeService>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _tagsController = TextEditingController();

  late bool _isButtonDisabled;

  @override
  void initState() {
    super.initState();
    _titleController.addListener(_updateIsButtonDisabled);
    _descriptionController.addListener(_updateIsButtonDisabled);
    _updateIsButtonDisabled();
  }

  _updateIsButtonDisabled() {
    setState(() => _isButtonDisabled =
        _titleController.text.isEmpty || _descriptionController.text.isEmpty);
  }

  _saveInitiative() {
    final initiative = Initiative(
      title: _titleController.text,
      description: _descriptionController.text,
      tags: _tagsController.text.split(" "),
      status: 'Created',
      owner: User(
        firstName: 'Giuseppe',
        lastName: 'Migliaccio',
        imageUrl:
            'https://cdn.dribbble.com/users/81809/screenshots/3347540/gokussj.jpg',
      ),
    );
    _titleController.clear();
    _descriptionController.clear();
    _tagsController.clear();
    _initiativeService.createInitiative(initiative);
    widget.backToHome(0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const InitiativeFormTitle(),
          InitiativeFormTextField(
            placeholder: 'Title',
            controller: _titleController,
            autofocus: true,
          ),
          InitiativeFormTextField(
            placeholder: 'Description',
            controller: _descriptionController,
            maxLines: 8,
            textInputAction: TextInputAction.newline,
          ),
          InitiativeFormTextField(
            placeholder: 'Tags',
            controller: _tagsController,
            required: false,
          ),
          InitiativeFormButton(
            isDisabled: _isButtonDisabled,
            onPressed: _saveInitiative,
          ),
        ],
      ),
      margin: const EdgeInsets.only(top: 36),
      padding: const EdgeInsets.symmetric(horizontal: 32),
    );
  }
}
