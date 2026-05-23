import 'dart:math';
import 'package:flutter/material.dart';

class FirstClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Material(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('Perro'),
              subtitle: Text('Esto es un animal.'),
              trailing: Icon(Icons.access_time),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Gato'),
              subtitle: Text('Esto es un animal.'),
              trailing: Icon(Icons.access_time),
            ),
            Padding(
              child: Text('Perro'),
              padding: EdgeInsets.all(10.0),
            ),
            Container(
              child: Text('Gato'),
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              color: Colors.deepPurple,
              padding: EdgeInsets.only(top: 20.0),
              )

          ],
        )
     ) );
  }

  String generateNumbers() {
    var r=Random();
    int i=r.nextInt(22);
    return 'Un número aleatorio entre 0 y 22 es ${i}';
  }
}
