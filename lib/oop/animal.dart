class Animal {
  String name;
  int age;
  String color;

  Animal({required this.name, required this.age, required this.color}) {
    assert(name.isNotEmpty, "name cannot be empty");
    assert(age > 0, "age cannot be less than 0");
    assert(color.isNotEmpty, "color cannot be empty");
  }

  void makeSound(String sound) {
    String message = "$name is making a sound that goes \"$sound";
    print(message);
  }
}

String capitalize(String word) {
  String first = word[0];
  String rest = word.substring(1);
  return first.toUpperCase() + rest;
}

// should have been able to do basic stuff like this fr!
void main() {
  List<String> names = ['emeka', 'kamsi', 'chidera'];
  names.map(capitalize).forEach(print);
}
