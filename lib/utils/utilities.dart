import 'package:flutter/cupertino.dart';
import '../models/initiative_status_enum.dart';

class Utilities {
  static String getFirstLetter(String string) {
    return string.substring(0, 1);
  }

  static String getFullNameInitials(String firstName, String lastName) {
    return getFirstLetter(firstName) + getFirstLetter(lastName);
  }

  static IconData getInitiativeStatusIcon(InitiativeStatusEnum status) {
    switch (status) {
      case InitiativeStatusEnum.created:
        return CupertinoIcons.doc_checkmark;
      case InitiativeStatusEnum.approved:
        return CupertinoIcons.hand_thumbsup;
      case InitiativeStatusEnum.inProgress:
        return CupertinoIcons.hammer;
      case InitiativeStatusEnum.completed:
        return CupertinoIcons.checkmark_circle;
    }
  }

  static String getInitiativeStatusLabel(InitiativeStatusEnum status) {
    switch (status) {
      case InitiativeStatusEnum.created:
        return "Created";
      case InitiativeStatusEnum.approved:
        return "Approved";
      case InitiativeStatusEnum.inProgress:
        return "In progress";
      case InitiativeStatusEnum.completed:
        return "Completed";
    }
  }
}
