import 'dart:math';

//NOTE: abstract classes
//sort of interfaces for classes to ensure or force them to implement certian methods
//dart doesn't really have "interface" keyword : instead use class as interface
//NOTE: composition like behavior
abstract class Shape {
  double get area;
}

//NOTE: SquareClass "IS-A-SAHPE"
class SquareClass implements Shape {
  final double side;

  SquareClass(this.side);
  @override
  double get area => side * side;
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  final square = SquareClass(10);
  print(square.area);
  //or
  printArea(square); //NOTE: since square is a subclass of Shape
}

//NOTE: implements force to implements every methods
//** rigid **, workaround for multiple inheritance
