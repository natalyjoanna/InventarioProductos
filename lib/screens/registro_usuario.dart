import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  String _id = "";
  String _name = "";
  String _lastname = "";
  String _age = "";
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 72, 151),
        title: const Text(
          "Registro de usuarios",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Field para ID
              TextField(
                cursorColor: Color.fromARGB(255, 139, 72, 151),
                decoration: const InputDecoration(
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 139, 72, 151)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 139, 72, 151),
                          width: 2.0)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 215, 160, 224))),
                  labelText: 'ID',
                ),
                onChanged: (value) {
                  setState(() {
                    _id = value.trim();
                  });
                },
              ),

              // Field para Nombre
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: TextField(
                  cursorColor: Color.fromARGB(255, 139, 72, 151),
                  decoration: const InputDecoration(
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 139, 72, 151)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 139, 72, 151),
                              width: 2.0)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 215, 160, 224))),
                      labelText: 'Nombre'),
                  onChanged: (value) {
                    setState(() {
                      _name = value.trim();
                    });
                  },
                ),
              ),

              // Field para Apellido
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: TextField(
                  cursorColor: Color.fromARGB(255, 139, 72, 151),
                  decoration: const InputDecoration(
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 139, 72, 151)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 139, 72, 151),
                            width: 2.0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 215, 160, 224))),
                    labelText: 'Apellido',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _lastname = value.trim();
                    });
                  },
                ),
              ),

              // Field para Edad
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: TextField(
                  cursorColor: Color.fromARGB(255, 139, 72, 151),
                  decoration: const InputDecoration(
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 139, 72, 151)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 139, 72, 151),
                            width: 2.0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 215, 160, 224))),
                    labelText: 'Edad',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _age = value.trim();
                    });
                  },
                ),
              ),

              // ComboBox para Sexo
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 139, 72, 151)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 139, 72, 151),
                            width: 2.0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Sexo',
                  ),
                  items: <String>['Masculino', 'Femenino', 'Otro']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                  onChanged: (String? newValue) {},
                  value: 'Masculino',
                ),
              ),

              // Field para Email
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: TextField(
                  cursorColor: Color.fromARGB(255, 139, 72, 151),
                  decoration: const InputDecoration(
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 139, 72, 151)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 139, 72, 151),
                            width: 2.0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 215, 160, 224))),
                    labelText: 'Email/Usuario',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _email = value.trim();
                    });
                  },
                ),
              ),

              // Field para Contraseña
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: TextField(
                  cursorColor: Color.fromARGB(255, 139, 72, 151),
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 139, 72, 151)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 139, 72, 151),
                            width: 2.0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 215, 160, 224))),
                    labelText: 'Contraseña',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _password = value.trim();
                    });
                  },
                ),
              ),

              // ComboBox para Rol
              /*const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 139, 72, 151))),
                    labelText: 'Rol',
                  ),
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 139, 72, 151),
                  ),
                  onPressed: () {
                    // Validar campos vacios
                    if (_id.isEmpty ||
                        _name.isEmpty ||
                        _lastname.isEmpty ||
                        _age.isEmpty ||
                        _email.isEmpty ||
                        _password.isEmpty) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Campos vacios"),
                              content: const Text(
                                  "Es necesario completar todos los campos."),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text("OK"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Registro Exitoso"),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text("OK"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    }
                  },
                  child: const Text(
                    'Alta',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
