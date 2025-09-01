void main() {
  Position one = Position(1, 2);
  Position two = Position(5, 9);
  Position three = one + two;

  // display positions
  one.displayPosition();
  two.displayPosition();
  three.displayPosition();
}

// position class with custom + operator
class Position {
  int xPos;
  int yPos;

  Position(this.xPos, this.yPos);

  Position operator +(Position other) {
    Position newPos = Position(other.xPos + xPos, other.yPos + yPos);
    return newPos;
  }

  @override
  String toString() {
    // u don't need this?? u can just do toString() ?? WOW!
    return "($xPos, $yPos)";
  }

  void displayPosition() {
    print("Pos == ${toString()}");
  }
}
