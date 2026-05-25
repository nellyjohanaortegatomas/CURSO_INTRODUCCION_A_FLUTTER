import 'package:first_flutter_project/first_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myclass());

class Myclass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter app",
      routes: {
        '/screen1': (context) => SecondClass(),
        '/screen2': (context) => SecondClass(),
        '/screen3': (context) => SecondClass(),
        '/screen4': (context) => SecondClass(),
      },
      home: Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          title: Center(child: Text('Title')
          ),
          actions: <Widget>[
            Icon(Icons.settings),
          ],
          // bottom: PreferredSize(
          //   preferredSize: Size.fromHeight(40.0),
          //   child: Text('This is a text in appbar'),
          // ),
        ),
      ),
    );
  }
}
