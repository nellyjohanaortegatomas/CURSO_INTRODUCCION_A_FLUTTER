import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather/modules/global.dart';
import 'package:weather/modules/weatherApi.dart';
import 'dart:async';
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Weather'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future<dynamic> fetchPosts() async {
    var response = await http.get(
      Uri.parse(EARTHQUAKE_URL),
      headers: {"Content-Type": "application/json"},
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return WeatherApi.fromJson(data);
    } else {
      return "Disculpen las molestias, el servidor está en mantenimiento.";
    }
  }

  List<Color> colors = [
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: fetchPosts(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.data is String) {
            return Center(child: Text(snapshot.data));
          }

          WeatherApi weatherApi = snapshot.data;

          return ListView.builder(
            itemCount: weatherApi.features!.length,
            itemBuilder: (BuildContext context, int index) {
              var feature = weatherApi.features![index];
              var properties = feature.properties!;
              List<String> places = properties.place!.split(',');

              int magIndex = (properties.mag ?? 0).ceil();
              if (magIndex <= 0) magIndex = 1;
              if (magIndex > 4) magIndex = 4;

              return Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFE0E0E0),
                      offset: Offset(0.5, 0.5),
                      blurRadius: 10.0,
                    ),
                  ],
                  shape: BoxShape.rectangle,
                  color: Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 6,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colors[magIndex - 1],
                        ),
                        child: Center(
                          child: Text(
                            magIndex.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          places.last.trim(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          places.first,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
