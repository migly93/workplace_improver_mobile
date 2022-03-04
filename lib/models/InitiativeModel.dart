class InitiativeModel {
//These are the values that this Demo model can store
  String _title = '';
  String _subtitle = '';

//default Constructor
  InitiativeModel(String title, String subtitle) {
    this._title = title;
    this._subtitle = subtitle;
  }

  String get title {
    return this._title;
  }

  String get subtitle {
    return this._subtitle;
  }
}
