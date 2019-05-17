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

abstract class Shape {
  String color;
  int height;
  static int value = 4;

  void draw();
  void draw1() {}
}

class Rectangle extends Shape {
  int width;

  void draw() {
    print("Rectangle draw");
  }
}

class Circle implements Shape {
  int radius;

  void draw() {
    print("Circle draw");
  }

  void draw1() {}

  @override
  String color;

  @override
  int height;
}

void main() {
  var rectangle = Rectangle()
    ..width = 5
    ..height = 4
    ..color = 'red';

  var circle = Circle()
    ..radius = 20
    ..height = 4
    ..color = 'red';

  rectangle.draw();
  circle.draw();
}
