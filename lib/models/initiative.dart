import 'package:workplace_improver_mobile/models/user.dart';

class Initiative {
//These are the values that this Demo model can store
  String _title = '';
  String _description = '';
  String _status = '';
  DateTime _creationDate = DateTime.now();
  int _likes = 0;
  List<String> _comments = [];
  List<String> _tags = [];
  User _owner = User('', '', '');

//default Constructor
  Initiative(
    String title,
    String description,
    String status,
    DateTime creationDate,
    int likes,
    List<String> comments,
    List<String> tags,
    User owner,
  ) {
    _title = title;
    _description = description;
    _status = status;
    _creationDate = creationDate;
    _likes = likes;
    _comments = comments;
    _tags = tags;
    _owner = owner;
  }

  String get title {
    return _title;
  }

  String get description {
    return _description;
  }

  String get status {
    return _status;
  }

  DateTime get creationDate {
    return _creationDate;
  }

  int get likes {
    return _likes;
  }

  List<String> get comments {
    return _comments;
  }

  List<String> get tags {
    return _tags;
  }

  User get owner {
    return _owner;
  }
}
