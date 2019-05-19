abstract class Animal {
  eat() {
    print("I'm Eating");
  }
}

abstract class Fly {
  fly() {
    print("I'm Flying ${ffl()}");
  }

  int ffl();
}

mixin Swimmer {
  swim() {
    print("I'm swimming");
  }
}

mixin Walker {
  walk() {
    print("I'm walking");
  }
}

class Bird extends Animal {}

class Fish extends Animal {}

class Duck extends Bird with Fly, Walker {
  fly() {
    print("I'm Flying from Duck class");
  }

  int ffl() => 5;
}

class Flyingfish extends Fish with Fly, Swimmer {
  int ffl() => 8;
}

void main() {
  var duck = Duck();
  duck.eat();
  duck.fly();
  duck.walk();

  var flyingfish = Flyingfish();
  flyingfish.eat();
  flyingfish.fly();
  flyingfish.swim();
}
