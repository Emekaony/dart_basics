import "package:simple_app/random_stuff/person.dart";

void main() {
  Person pp = Person(22, firstname: "Emeka", lastName: "Ony", age: 24);
  Person pp2 = Person(22, firstname: "Emeka", lastName: "Ony", age: 24);

  /*
  when a variable points to an object in dart, the Object is placed on the heap
  while the variable itself is a memory address on the stack that points to that
  said object on the heap.

  This is why when you assign p3 to pp, it holds the memory address as well and 
  mutating it also mutates the original object.

  So everything is an object in dart and it's good to understand this becaue it
  will help u make better programming choices.
  */
  Person p3 = pp;
  p3.firstname = "lala";
  print(pp.firstname);

  // this checks if two object references reference the same object in memory!
  print(identical(p3, pp));

  // are 2 objects with the same fields equal?? No because they point to
  // different locations in memory.
  print(pp == pp2);

  Person p1 = Person(1, firstname: "a", lastName: "b", age: 1);
  Person p2 = Person(1, firstname: "a", lastName: "b", age: 1);
  // I have overriden == operator, this should be true now
  print(p1 == p2);

  // I think everything should start as final in dart
  final int firstEvenNum = [1, 2, 3].firstWhere((n) {
    return n % 2 == 0;
  });
  print(firstEvenNum);

  final Iterable<int> allOddNums = [1, 2, 3, 4, 5].where((n) {
    // u must specify the return statement else it implicitly returns null!
    return n % 2 != 0;
  });
  allOddNums.forEach(print);
}
