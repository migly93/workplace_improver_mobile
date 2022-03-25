class User {
//These are the values that this Demo model can store
  String _firstName = '';
  String _lastName = '';

//default Constructor
  User(String firstName, String lastName) {
    _firstName = firstName;
    _lastName = lastName;
  }

  String get firstName {
    return _firstName;
  }

  String get lastName {
    return _lastName;
  }
}
