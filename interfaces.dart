void main() {
  Circle c = Circle(10);
  Square s = Square(10);
  print(c.area);
  print(c.perimeter);
  print(s.area);
  print(s.perimeter);
}

// create interface in dart

abstract class Shape {
  double get area;
  double get perimeter;
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
  @override
  double get area => 3.14159 * radius * radius;
  @override
  double get perimeter => 2 * 3.14159 * radius;
}

class Square implements Shape {
  final double side;
  Square(this.side);
  @override
  double get area => side * side;
  @override
  double get perimeter => 4 * side;
}
