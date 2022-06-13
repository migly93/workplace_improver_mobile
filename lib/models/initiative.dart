import 'initiative_status_enum.dart';
import 'user.dart';

class Initiative {
  int id;
  String title;
  String description;
  InitiativeStatusEnum status;
  DateTime creationDate = DateTime.now();
  int likes;
  List<String> comments;
  List<String> tags;
  User owner;

  Initiative({
    required this.title,
    required this.description,
    required this.status,
    required this.owner,
    this.id = -1,
    this.likes = 0,
    this.comments = const [],
    this.tags = const [],
    creationDate,
  });
}
