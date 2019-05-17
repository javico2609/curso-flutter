/**
    1 - Definición de clase y propiedades
    2 - Constructor ( default, named o factory )
    3 - Default and Custom Getter and Setter
    4 - Private field
    5 - Herencia
    6 - Abstract class and method
    7 - Interfaces
    8 - Static methods and fields
 */

class Shape {
  String color;
  int _height;

  static int h = 4;

  int get height => _height;
  void set height(int height) => _height = height;

  Shape();
  Shape.init(this.color, int height) : _height = height;

  @override
  String toString() {
    return "height - $height, Color - $color";
  }

  void draw() {
    print("Shape draw");
  }
}

class Rectangle extends Shape {
  int width;

  void draw() {
    print("Rectangle draw");
  }
}

class Circle extends Shape {
  int radius;

  void draw() {
    print("Circle draw");
  }
}

void main() {
  var shape = Shape()
    ..height = 4
    ..color = 'red';

  var shape1 = Shape.init("blue", 10);

  var rectangle = Rectangle()
    ..width = 5
    ..height = 4
    ..color = 'red';

  var circle = Circle()
    ..radius = 20
    ..height = 4
    ..color = 'red';

  print(shape);
  print(shape1);
  rectangle.draw();
  circle.draw();
  print(Shape.h);
  Shape.h = 5;
  print(Shape.h);
}
