import 'dart:math';
import 'package:first_flutter_project/util.dart';
import 'package:flutter/material.dart';

class SecondClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Material(
        color: Colors.deepPurple,
        child: Container(
          height: 500.0,
          width: 300.0,
          alignment: Alignment(0, 0),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Colors.green, Colors.blue, Colors.pink, Colors.purple],
              stops: [0.2, 0.5, 0.7, 1],
              center: Alignment(0.1, 0.3),
              focal: Alignment(-0.1, 0.6)
            )
          ),
          //color: lightPurpleColor,
          child: GestureDetector(
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('It was pressed'),
                duration: Duration(seconds: 2),
              ));
            },
            child: Text(generateNumbers(), textDirection: TextDirection.ltr,)
          )
        )
        );
  }
}

String generateNumbers() {
  var r=Random();
  int i=r.nextInt(22);
  return 'Un número aleatorio entre 0 y 22 es ${i}';
}
