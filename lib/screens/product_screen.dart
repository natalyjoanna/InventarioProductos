import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  String _id = "";
  String _name = "";
  String _description = "";
  String _cost = "";
  String _price = "";
  String _unit = "";
  String _utility = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 72, 151),
        title: const Text(
          "Registro de productos",
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

              // Field para Descripción
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
                    labelText: 'Descripción',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _description = value.trim();
                    });
                  },
                ),
              ),

              // Field para Unidades
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
                    labelText: 'Unidades',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _unit = value.trim();
                    });
                  },
                ),
              ),

              // Field para Costo
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
                    labelText: 'Costo',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _cost = value.trim();
                    });
                  },
                ),
              ),

              // Field para Precio
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
                    labelText: 'Precio para venta',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _price = value.trim();
                    });
                  },
                ),
              ),

              // Field para Utilidad
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
                    labelText: 'Utilidad',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _utility = value.trim();
                    });
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 139, 72, 151),
                  ),
                  onPressed: () {
                    if (_id.isEmpty ||
                        _name.isEmpty ||
                        _description.isEmpty ||
                        _unit.isEmpty ||
                        _cost.isEmpty ||
                        _price.isEmpty ||
                        _utility.isEmpty) {
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
