// dummy class to dempnstrate .. notation
class Movement {
  int xDir;
  int yDir;

  // constructor
  Movement(this.xDir, this.yDir);

  void advanceBy(int x, int y) {
    // this is darts way of doing tuples. they're called records!
    (int, int) oldPos = (xDir, yDir);
    xDir += x;
    yDir += y;
    print("moving from (${oldPos.$1}, ${oldPos.$2}) -> ($xDir, $yDir)");
  }

  // make the result of printing an instance of Movement more descriptive!
  @override
  String toString() {
    return "($xDir, $yDir)";
  }
}

void main() {
  // when u use the ".." method chaining, it calls that method for you
  // while still returning the original object
  Movement mm = Movement(2, 5)..advanceBy(4, 5);
  print(mm);
}
