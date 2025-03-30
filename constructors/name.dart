//NOTE: name constructor
//allows to define and create an obj
//different ways to initialize an obj

class Point {
  double x;
  double y;

  // Named constructor
  Point.origin() {
    x = 0;
    y = 0;
  }
}

void main(){
  var p1 = Point(3, 4); // Using the default constructor
  var p2 = Point.origin(); // Using the named constructor
}
