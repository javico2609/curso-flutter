/**
    1 - Funciones
          Parámetros
            - obligatorios
            - opcionales ( posicionales y por nombre )
            - valor por defecto
          Sintaxis abreviada

     * Todas las funciones retornan por defecto null;

    2 - Exception
         Try, Catch, On, Finally 
         Custom Exception   
 */

void main() {
  int getArea(int a, {int b = 2, int c = 10}) {
    return a * b;
  }

  int getArea2(int a, int b) {
    try {
      throw new DivException();
    } on IntegerDivisionByZeroException {
      print("Ocurrio un error !!!");
    } catch (e, s) {
      print(e.errorMessage());
    } finally {
      print('End !!!');
    }
  }

  print(getArea(5, b: 5));
  print(getArea2(5, 0));
}

class DivException implements Exception {
  String errorMessage() {
    return "DivException !!!!";
  }
}
