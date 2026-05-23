import 'package:flutter/material.dart';

class SecondClass extends StatefulWidget {
  @override
  _SecondClassState createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass> {
  String maritalStatus = 'single';
  bool termsChecked = true;

  List<String> locations = ['Siglo XXI', 'Casas Geo', 'Loma Alta', 'Camelia'];
  String? selectedLocation;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          //title: Center(child: Text('Title')
          //),
          title: Text('Title'),
          centerTitle: true,
          actions: <Widget>[
            Icon(Icons.settings),
          ],
          /*bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: Text('Este es un texto en la appbar'),
          ),*/
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  maxLength: 20,
                  decoration: InputDecoration(hintText: 'Nombre', labelText: 'Ingresa tu Nombre'),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Edad', labelText: 'Ingresa tu Edad'),
                  keyboardType: TextInputType.phone,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Contraseña', labelText: 'Ingresa tu Contraseña'),
                ),
                DropdownButton<String>(
                  hint: Text('Por favor, elige la colonia en la que vives.'),
                  value: selectedLocation,
                  items: locations.map((location) {
                    return DropdownMenuItem(
                      child: Text(location),
                      value: location,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedLocation = value!;
                    });
                  },
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text('Soltero/a'),
                        value: 'single',
                        groupValue: maritalStatus,
                        onChanged: (value) {
                          setState(() {
                            maritalStatus = value!;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text('Casado/a'),
                        value: 'married',
                        groupValue: maritalStatus,
                        onChanged: (value) {
                          setState(() {
                            maritalStatus = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),

                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: termsChecked,
                  title: new Text(
                    'Suscribirse al periódico y a los artículos relacionados.',
                  ),
                  onChanged: (value) {
                    setState(() {
                      termsChecked = value!;
                    });
                  },
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text('Registrar'),
                )
              ],
            )
          ),
        )
      )
    );
  }
}
