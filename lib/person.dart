class Person {
  // dart classes use mf semi-colons not commas
  String firstname;
  String lastName;
  final int _id;
  int age;

  // must have positional args before named args
  Person(
    this._id, {
    required this.firstname,
    required this.lastName,
    required this.age,
  });

  void displayID() {
    print(_id);
  }

  @override
  bool operator ==(Object other) {
    // check if they reference the same object in memory
    if (identical(this, other)) return true;

    // if not, check if they have similar fields
    return other is Person &&
        other.firstname == firstname &&
        other.lastName == lastName &&
        other._id == _id;
  }

  @override
  int get hashCode => Object.hash(firstname, lastName, _id);
}

void updateFirstName(Person person) {
  person.firstname = "Updated";
}
