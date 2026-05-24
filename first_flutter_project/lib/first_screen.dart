import 'package:flutter/material.dart';

class SecondClass extends StatefulWidget {
  @override
  _SecondClassState createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass> {
  final _formKey = GlobalKey<FormState>();

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
          title: Text('Título'),
          centerTitle: true,
          actions: <Widget>[
            Icon(Icons.settings),
          ],
          /*bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: Text('Este es un texto en la appbar'),
          ),*/
        ),
      body: Material(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Ingresa tu Nombre',
                      hintText: 'Nombre',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor, ingresa un nombre';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Ingresa tu Edad',
                      hintText: 'Edad',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) return 'Por favor, ingresa una edad';
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Ingresa tu Contraseña',
                      hintText: 'Contraseña',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) return 'Por favor, ingresa una contraseña';
                      if (value.length < 8) {
                        return 'La contraseña debe tener más de 8 caracteres';
                      }
                      return null;
                    },
                  ),
                  DropdownButtonFormField<String>(
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
                        selectedLocation = value;
                      });
                    },
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: RadioListTile<String>(
                          title: Text('Soltero/a'),
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
                          title: Text('Casado/a'),
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
                    value: termsChecked,
                    title: Text(
                      'Suscribirse al periódico y a los artículos relacionados.',
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value) {
                      setState(() {
                        termsChecked = value ?? false;
                      });
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Registrar'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Formulario enviado')),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
