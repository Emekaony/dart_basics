mixin Swimming {
  void swim() => print("Swimming");
}

class Animal {}

// mixins allow us to add extra functionality to classes
class Human extends Animal with Swimming {}

class Fish extends Animal with Swimming {}

/*
- Be careful with mixins tho because this can result in 
 name pollution. I wish mixins had scope resolution operators
*/

mixin One {
  int collision = 1;
  void foo() {
    print("foo from one");
  }
}

mixin Two {
  int collision = 9;
  void foo() {
    print("foo from mixin two");
  }
}

class Doe with One, Two {
  void printCollision() {
    // which collision does it print??
    print(collision);
  }
}

void main() {
  Doe dd = Doe();
  // also here, which foo does it call? from mixin ONE or mixin TWO????
  dd.foo();
  dd.printCollision();
}
