import 'dart:math';
import 'package:first_flutter_project/util.dart';
import 'package:flutter/material.dart';

class SecondPageClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        automaticallyImplyLeading: true,
        title: Center(child: Text('Pantalla 2')),
        actions: <Widget>[
          Icon(Icons.settings)
        ],
        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(40.0),
        //   child: Text('This is a text in appbar')
        // ),
      ),
      body: Material(
        child: Column(
          children: <Widget>[
            Text('Pantalla 2'),
            GestureDetector(
              child: Text('¡llévame de vuelta!'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
