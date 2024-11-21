abstract class Shape {
  void draw(); // Abstract method
}

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a Circle.");
  }
}

class Rectangle extends Shape {
  @override
  void draw() {
    print("Drawing a Rectangle.");
  }
}

void main() {
  Shape shape;

  shape = Circle();
  shape.draw(); // Output: Drawing a Circle.

  shape = Rectangle();
  shape.draw(); // Output: Drawing a Rectangle.
}
