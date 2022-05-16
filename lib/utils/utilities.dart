class Utilities {
  static String getFirstLetter(String string) {
    return string.substring(0, 1);
  }

  static String getFullNameInitials(String firstName, String lastName) {
    return getFirstLetter(firstName) + getFirstLetter(lastName);
  }
}
