import 'package:flutter/material.dart';

class SecondClass extends StatefulWidget {
  @override
  _SecondClassState createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass> {
  final _formKey = GlobalKey<FormState>();

  String name = '';
  int age = 0;
  String password = '';
  String maritalStatus = 'single';
  bool termsChecked = true;

  List<String> locations = ['Siglo XXI', 'Casas Geo', 'Loma Alta', 'Camelia'];
  String? selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: Center(
          child: Text('Título'),
        ),
        actions: <Widget>[
          Icon(Icons.settings),
        ],
        /*bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Text('this is a text in appbar'),
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
                      if (value == null || value.isEmpty) {
                        return 'Por favor, ingresa un nombre';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        name = value!;
                      });
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Ingresa tu Edad',
                      hintText: 'Edad',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, ingresa una edad';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        age = int.tryParse(value!) ?? 0;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Ingresa tu Contraseña',                      
                      hintText: 'Contraseña',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, ingresa una contraseña';
                      }
                      if (value.length < 8) {
                        return 'La contraseña debe tener más de 8 caracteres';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        password = value!;
                      });
                    },
                  ),
                  DropdownButton<String>(
                    hint: Text('Por favor, elige la colonia en la que vives.'),
                    value: selectedLocation,
                    onChanged: (newValue) {
                      setState(() {
                        selectedLocation = newValue!;
                      });
                    },
                    items: locations.map((location) {
                      return DropdownMenuItem<String>(
                        child: Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: RadioListTile<String>(
                          title: const Text("Soltero/a"),
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
                          title: const Text("Casado/a"),
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
                    onChanged: (value) {
                      setState(() {
                        termsChecked = value ?? false;
                      });
                    },
                    title: Text(
                      'Suscribirse al periódico y a los artículos relacionados.',
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Registrar'),
                    onPressed: () {
                      onPressedSubmit(context);
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

  void onPressedSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      print("Name " + name);
      print("Age " + age.toString());
      print("City " + (selectedLocation ?? ''));
      print("Marital Status " + maritalStatus);
      print("Password " + password);
      print("TermsChecked " + termsChecked.toString());

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Formulario enviado'),
        ),
      );
    }
  }
}
