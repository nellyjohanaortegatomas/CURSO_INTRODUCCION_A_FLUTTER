import 'dart:math';
import 'package:first_flutter_project/util.dart';
import 'package:flutter/material.dart';

class SecondClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: Center(child: Text('Título')),
        actions: <Widget>[
          Icon(Icons.settings),
          // bottom: PreferredSize(
          //   preferredSize: Size.fromHeight(40.0),
          //   child: Text('This is a text in appbar'),
          // ),
        ],
      ),
      body: Material(
        child: WillPopScope(
          onWillPop: () async {
            return await showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('¿Estas seguro/a?'),
                    content: Text('La aplicación se cerrará.'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('No'),
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                      ),
                      TextButton(
                        child: Text('Sí'),
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                      ),
                    ],
                  ),
                ) ??
                false;
          },
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
                        'Expanded',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.pinkAccent,
                      child: Text(
                        'Flexible',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: Container(
                      color: Colors.blue,
                      child: Text(
                        'Flexible',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.green,
                      child: Text(
                        'Flexible',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.orange,
                      child: Text(
                        'Expanded',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.red,
                      child: Text(
                        'Expanded',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                child: Text("Haz clic aquí"),
                onTap: () {
                  Navigator.of(context).pushNamed('/screen2');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  String generateNumbers() {
    var r = Random();
    int i = r.nextInt(20);
    return 'Un número aleatorio entre 0 y 22 es ${i}';
  }
}
