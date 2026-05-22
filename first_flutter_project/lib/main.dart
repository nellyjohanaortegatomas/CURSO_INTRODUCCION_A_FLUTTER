import 'package:first_flutter_project/second_file.dart';
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
          title: Text('Title'),
        ),
        body: SecondClass()
      )
  );
  }
}
