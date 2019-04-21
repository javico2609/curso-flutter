import 'dart:core';
import 'demo_lib.dart';

/**
    1 - Numbers
    int
    double

    2 - Strings
    3 - Booleans
    4 - Sets
    5 - List | Arrays
    6 - Maps
    7 - Runes ()
    8 - Symbols

    # Todos los tipos de datos en dart heredan de Object y su valor por defecto es null
 */

void main() {
  // Numbers
  double score = 10.5;
  double exponents = 1.42e5;

  int players = 5;
  var games = 10; // Dart infiere el tipo de dato basado en el valor que guarda.
  int hexValue = 0xEADEBAEE;

  //Strings
  String playerOne = "PayerName";

  //Booleans
  bool isFinished = true;

  // Sets
  Set<String> playersName = {
  'PlayerOne',
  'PlayerTwo',
  'PlayerTwo'
  }; // Colección de objetos donde cada objeto solo existe una vez.
  Set<dynamic> playersObj = {
  new Player('PlayerOne'),
  new Player('PlayerTwo'),
  new Player('PlayerTwo')
  };

  print(playersName);
  print(playersObj);

  // List | Arrays
  List<double> records = [25.3, 14.3, 25.4];
  print(records);

  records =
  [
  ...records,
  ...[ 45.6,58.6 ],
  if(isFinished) 455,
  for(double i = 0; i < 5; i++) i,
  for(double i = 0; i < 5; i++) if(i %2 == 0) i,
  ];

  print(records);
  // Maps
  Map<String, String> gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
  };

  print(gifts);
  print(gifts['first']);

  // Symbols
  Symbol lib = new Symbol("foo_lib");
  //library name stored as Symbol

  Symbol clsToSearch = new Symbol("Foo");
  // class name stored as Symbol

  if (existClassAvailableInLibrary(lib, clsToSearch)) print("class found..");
}

class Player {
  final String name;

  const Player(this.name);

  @override
  bool operator ==(other) {
    return name == other.name;
  }

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return name;
  }
}
