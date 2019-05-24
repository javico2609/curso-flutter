import 'player.dart';

/**
    1 - List
      - listas de tamaño fijo
      - listas de tamaño dinamico

    2 - HashSet
    3 - HashMap  
 */

void main() {
  bool isFinished = true;

  // Sets
  Set<String> playersName = {
    'PlayerOne',
    'PlayerTwo',
    'PlayerTwo'
  }; // Colección de objetos donde cada objeto solo existe una vez.
  Set<dynamic> playersObj = {
    new Player('Player1'),
    new Player('Player2'),
    new Player('Player2')
  };

  // List | Arrays
  List<double> records = [25.3, 14.3, 25.4];
  print(records);

  records = [
    ...records,
    ...[45.6, 58.6],
    if (isFinished) 455,
    for (double i = 0; i < 5; i++) i,
    for (double i = 0; i < 5; i++) if (i % 2 == 0) i,
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
}
