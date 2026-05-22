import 'package:flutter/material.dart';

class SecondClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Material(
        color: Colors.deepPurple,
        child: Center(
          child: Text('Este es un texto.', textDirection: TextDirection.ltr,)
        )
        );
  }
}
