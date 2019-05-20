import 'dart:async';
import 'dart:math';

void main() async {
  print('Start !!!');
  
  List<int>  values = await Future.wait([
    loadData(),
    loadData(),
    loadData(),
  ]);
     
  print(values);
  print('End !!!');
}

Future<int> loadData() {
  return Future.delayed( new Duration(milliseconds: 20), () => Random().nextInt(200));
}