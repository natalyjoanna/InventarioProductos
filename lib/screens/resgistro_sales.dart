import 'package:flutter/material.dart';

class Sales extends StatefulWidget {
  const Sales({super.key});

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  String _id = "";
  String _nombre = "";
  String _cantidad = "";
  String _cantidadPiezas = "";
  String _idVenta = "";
  String _idCompra = "";
  String _subTotal = "";
  String _total = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 72, 151),
        title: const Text(
          "Ventas",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      //
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            // Campo para ID
            TextField(
              cursorColor: Color.fromARGB(255, 139, 72, 151),
              decoration: const InputDecoration(
                labelStyle: TextStyle(color: Color.fromARGB(255, 139, 72, 151)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 139, 72, 151), width: 2.0)),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 139, 72, 151))),
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
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 139, 72, 151))),
                  labelText: 'Nombre',
                ),
                onChanged: (value) {
                  setState(() {
                    _nombre = value.trim();
                  });
                },
              ),
            ),

            // Field para Cantidad
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
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 139, 72, 151))),
                  labelText: 'Cantidad',
                ),
                onChanged: (value) {
                  setState(() {
                    _cantidad = value.trim();
                  });
                },
              ),
            ),

            // Field para ID Venta
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
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 139, 72, 151))),
                  labelText: 'ID de venta',
                ),
                onChanged: (value) {
                  setState(() {
                    _idVenta = value.trim();
                  });
                },
              ),
            ),

            // Field para ID Compra
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
                  border: OutlineInputBorder(),
                  labelText: 'ID de compra',
                ),
                onChanged: (value) {
                  setState(() {
                    _idCompra = value.trim();
                  });
                },
              ),
            ),

            // Field para las piezas
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
                  border: OutlineInputBorder(),
                  labelText: 'Cantidad de piezas',
                ),
                onChanged: (value) {
                  setState(() {
                    _cantidadPiezas = value.trim();
                  });
                },
              ),
            ),

            // Field para subtotal
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
                  border: OutlineInputBorder(),
                  labelText: 'Subtotal',
                ),
                onChanged: (value) {
                  setState(() {
                    _subTotal = value.trim();
                  });
                },
              ),
            ),

            // Field para total
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
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 139, 72, 151))),
                  labelText: 'Total',
                ),
                onChanged: (value) {
                  setState(() {
                    _total = value.trim();
                  });
                },
              ),
            ),

            // Boton
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 139, 72, 151),
                ),
                onPressed: () {
                  // Validar campos vacios
                  if (_id.isEmpty ||
                      _nombre.isEmpty ||
                      _cantidad.isEmpty ||
                      _idVenta.isEmpty ||
                      _idVenta.isEmpty ||
                      _idCompra.isEmpty ||
                      _cantidad.isEmpty ||
                      _cantidadPiezas.isEmpty ||
                      _subTotal.isEmpty ||
                      _total.isEmpty) {
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
          ]),
        ),
      ),
    );
  }
}
