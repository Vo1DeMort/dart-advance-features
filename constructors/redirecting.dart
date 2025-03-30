class Point {
  double x, y;

  // Default constructor
  Point(this.x, this.y);

  // Redirecting constructor: always initializes to (0, 0)
  // in this case it's also a name constructor
  Point.origin() : this(0, 0);
  //NOTE: this is valid as well
  //Point() : this(0, 0);
}

void main() {
  var p1 = Point(3, 4);   // Calls the default constructor
  var p2 = Point.origin(); // Redirects to Point(0, 0)
}

