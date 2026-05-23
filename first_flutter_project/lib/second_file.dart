import 'dart:math';
import 'package:first_flutter_project/util.dart';
import 'package:flutter/material.dart';

class SecondClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Material(
        //color: Colors.deepPurple,
        //child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(
        child: Container(
          color: Colors.deepPurple,
          child: Text(
            "Expanded",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
          Flexible(
        child: Container(
          color: Colors.pinkAccent,
          child: Text(
            "Flexible",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      )
        ],
      ),
      Row(
        children: <Widget>[
          Flexible(
        child: Container(
          color: Colors.blue,
          child: Text(
            "Flexible",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
          Flexible(
        child: Container(
          color: Colors.green,
          child: Text(
            "Flexible",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      )
        ],
      ),
      Row(
        children: <Widget>[
          Expanded(
          flex: 1,
        child: Container(
          color: Colors.orange,
          child: Text(
            "Expanded",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
          Expanded(
          flex: 3,
        child: Container(
          color: Colors.red,
          child: Text(
            "Flexible",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      )
        ],
      ),
    ],
  ),
     );
  }
}

/*
          Icon(Icons.ac_unit),
        Container(
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
          color: lightPurpleColor,
          child: GestureDetector(
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('It was pressed'),
                duration: Duration(seconds: 2),
              ));
            },
            child: Text(generateNumbers(), textDirection: TextDirection.ltr, style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),)
          )
        ),
        Container(
          height: 500.0,
          width: 100.0,
          color: Colors.deepPurple,
        )
*/

String generateNumbers() {
  var r=Random();
  int i=r.nextInt(22);
  return 'Un número aleatorio entre 0 y 22 es ${i}';
}
