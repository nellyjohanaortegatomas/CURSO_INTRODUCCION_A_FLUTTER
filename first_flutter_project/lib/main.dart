import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "My flutter app",
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: Center(
          child: Text('Este es un texto.', textDirection: TextDirection.ltr,),
        ),
      )
    ),
  );
}
