import 'dart:math';
import 'package:flutter/material.dart';

class SecondClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Material(
        color: Colors.deepPurple,
        child: Center(
          child: Text(generateNumbers(), textDirection: TextDirection.ltr,)
        )
        );
  }
}

String generateNumbers() {
  var r=Random();
  int i=r.nextInt(22);
  return 'Un número aleatorio entre 0 y 22 es ${i}';
}
