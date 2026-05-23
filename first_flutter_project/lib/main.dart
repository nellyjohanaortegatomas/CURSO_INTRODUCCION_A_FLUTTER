import 'package:first_flutter_project/first_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myclass());

class Myclass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter app",
      home: SecondClass(),
    );
  }
}
