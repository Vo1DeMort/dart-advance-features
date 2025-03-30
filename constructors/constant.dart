//NOTE: constant constructor
//allows to create immutable objs at compile time

class Point {
  final double x;
  final double y;

  // Constant constructor
  const Point(this.x, this.y);
}

void main() {
  var p1 = const Point(3, 4); // Constant instance
  var p2 = const Point(3, 4);
  var p3 = Point(3, 4); // Non-constant instance
}

