class User {
//These are the values that this Demo model can store
  String _firstName = '';
  String _lastName = '';
  String _imageUrl = '';

//default Constructor
  User(String firstName, String lastName, String imageUrl) {
    _firstName = firstName;
    _lastName = lastName;
    _imageUrl = imageUrl;
  }

  String get firstName {
    return _firstName;
  }

  String get lastName {
    return _lastName;
  }

  String get imageUrl {
    return _imageUrl;
  }
}
