import 'dart:core';

/**
    1 - For
         continue;
         break;
    2 - While
    3 - Do While
 */

void main() {
// For for(init values; condición; incremento/decremento de la variable condicional)
  for (int player = 1; player <= 10; player++) {
    if (player % 2 == 0) {
      break;
    }

    //print(player);
  }

// While  while(condición) { ...  incremento/decremento de la variable condicional }
  int player = 1;
  while (player <= 10) {
    // print(player);
    player++;
  }

// Do While  do { ...  incremento/decremento de la variable condicional } while(condición);
  player = 1;
  do {
    // print(player);
    player++;
  } while (player <= 10);

  print(sumar(a: 1));
  print(sumar2(1));
}

int sumar({int a, int b = 5}) {
  return a + b;
}

int sumar2([int a, int b = 5]) {
  return a + b;
}
