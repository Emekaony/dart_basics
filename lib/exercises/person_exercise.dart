import "dart:convert";

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  // nice factory method
  factory Person.fromJson(Map<String, Object> json) {
    Person person;
    final name = json["name"];
    final age = json["age"];
    bool validName = name is String && name.isNotEmpty;
    bool validAge = age is int;
    if (!validAge) {
      throw UnsupportedError("invalid age parameter");
    } else if (!validName) {
      throw UnsupportedError("invalid name parameter");
    } else {
      person = Person(name: name, age: age);
    }
    return person;
  }

  static String toJson(Person p) {
    Map<String, Object> json = {"name": p.name, "age": p.age};
    return jsonEncode(json);
  }
}

void main() {
  // get a person instance from json string
  final person = Person.fromJson({"name": "Andrea", "age": 22});
  print("${person.name} ${person.age}");
  final json = Person.toJson(person);
  print(json);
}
