void main() async {
  // Lambda Expression
  Function suma = (int a, int b) => a + b;

  print(suma(4, 5));
  print(suma2(suma));

  // Closures
  String msg = 'Message';
  Function updateMsg() {
    msg = '123456';
  }

  updateMsg();
  print(msg);
}

// Higher-Order Functions
suma2(Function(int a, int b) suma) => suma(5, 5) + 5;
