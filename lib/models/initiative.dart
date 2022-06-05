import 'user.dart';

class Initiative {
//These are the values that this Demo model can store
  int id;
  String title;
  String description;
  String status;
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
