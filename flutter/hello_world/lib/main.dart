import 'package:flutter/material.dart';
import 'package:hello_world/configs/environment.dart';
import 'package:hello_world/pages/home/home.page.dart';

void main() async {
  await Environment.setup();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola Mundo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
