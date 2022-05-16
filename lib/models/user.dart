class User {
  int id;
  String firstName;
  String lastName;
  String imageUrl;
  int activeInitiatives;
  int monthlyVotesLeft;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.imageUrl,
    this.activeInitiatives = 0,
    this.monthlyVotesLeft = 5,
  });
}
