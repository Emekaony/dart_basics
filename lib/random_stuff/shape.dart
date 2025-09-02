import "dart:math";

abstract class Shape {
  const Shape();

  double get area;

  void printArea() {
    print(area);
  }

  /*
  - Notice how Factory constructors allow u return a subclass of the parent class?
  - This is a factory method that takes in json and returns a shape Object
  */

  factory Shape.fromJson(Map<String, Object> json) {
    final type = json["type"];
    switch (type) {
      case "square":
        final side = json["side"];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError("invalid or unsupported side property");
      case "circle":
        final radius = json["radius"];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError("invalid or unsupported radius property");
      default:
        throw UnimplementedError("Shape $type not recognized");
    }
  }
}

class Square extends Shape {
  const Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  const Circle(this.radius);
  final double radius;

  @override
  double get area => pi * pow(radius, 2);
}

void main() {
  final List<Map<String, Object>> shapesJson = [
    {"type": "square", "side": 22.0},
    {"type": "circle", "radius": 34.2},
  ];

  // now get the shapes obj
  // functional programming is so beautiful
  final Iterable<Shape> shapes = shapesJson.map(
    (shape) => Shape.fromJson(shape),
  );
  for (Shape shape in shapes) {
    shape.printArea();
  }
}
