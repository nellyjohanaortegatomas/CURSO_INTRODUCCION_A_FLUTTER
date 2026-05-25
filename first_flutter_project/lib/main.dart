import 'package:first_flutter_project/first_screen.dart';
import 'package:first_flutter_project/second_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myclass());

class Myclass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter app",
      routes: {
        '/screen1': (context) => SecondClass(),
        '/screen2': (context) => SecondPageClass(),
      },
      home: SecondClass(),
    );
  }
}
