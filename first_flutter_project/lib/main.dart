import 'package:first_flutter_project/first_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp( Myclass() );

class Myclass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter app",
      home: Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          title: Center(child: Text('Título'),
          ),
          actions: <Widget>[
            Icon(Icons.settings)
          ],
          /*
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: Text('Este es un texto en la appbar'),
          ),
          */
        ),
        body: FirstClass()
      )
  );
  }
}
