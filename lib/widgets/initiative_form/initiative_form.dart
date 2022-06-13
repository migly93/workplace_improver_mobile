import 'package:flutter/material.dart';
import '../../models/initiative_status_enum.dart';
import '../../models/initiative.dart';
import '../../models/user.dart';
import '../../service_locator.dart';
import '../../services/initiative_service.dart';
import '../../services/user_service.dart';
import '../../utils/constants.dart';
import 'initiative_form_button.dart';
import 'initiative_form_text_field.dart';
import 'initiative_form_title.dart';

class InitiativeForm extends StatefulWidget {
  final Initiative? initiative;

  const InitiativeForm({
    Key? key,
    this.initiative,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _InitiativeFormState();
  }
}

class _InitiativeFormState extends State<InitiativeForm> {
  final _initiativeService = getIt<InitiativeService>();
  final UserService _userService = getIt<UserService>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _tagsController = TextEditingController();

  late bool _isButtonDisabled;
  late User _loggedUser;

  @override
  void initState() {
    super.initState();
    _loggedUser = _userService.getLoggedUser();
    _titleController.text =
        widget.initiative != null ? widget.initiative!.title : '';
    _descriptionController.text =
        widget.initiative != null ? widget.initiative!.description : '';
    _tagsController.text =
        widget.initiative != null ? widget.initiative!.tags.join(" ") : '';
    _titleController.addListener(_updateIsButtonDisabled);
    _descriptionController.addListener(_updateIsButtonDisabled);
    _updateIsButtonDisabled();
  }

  _updateIsButtonDisabled() {
    setState(() => _isButtonDisabled =
        _titleController.text.isEmpty || _descriptionController.text.isEmpty);
  }

  _saveInitiative(BuildContext context) {
    final initiative = Initiative(
      title: _titleController.text.trim(),
      description: _descriptionController.text.trim(),
      tags: _tagsController.text.trim().split(" "),
      status: InitiativeStatusEnum.created,
      owner: _loggedUser,
    );
    if (widget.initiative != null) {
      initiative.id = widget.initiative!.id;
      initiative.creationDate = widget.initiative!.creationDate;
      initiative.status = widget.initiative!.status;
    }
    _initiativeService.saveOrUpdate(initiative);
    Navigator.pushReplacementNamed(context, homeRoute);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
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
                  onPressed: () => _saveInitiative(context),
                ),
              ],
            ),
          ),
          margin: const EdgeInsets.only(top: 36),
          padding: const EdgeInsets.symmetric(horizontal: 32),
        ),
      ),
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
    );
  }
}
