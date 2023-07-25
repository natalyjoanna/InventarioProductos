import 'package:flutter/material.dart';

class Purchase extends StatefulWidget {
  const Purchase({super.key});

  @override
  State<Purchase> createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 72, 151),
        title: const Text(
          'Compras',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            // Campo para ID
            const TextField(
              cursorColor: Color.fromARGB(255, 139, 72, 151),
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Color.fromARGB(255, 139, 72, 151)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 139, 72, 151), width: 2.0)),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 139, 72, 151))),
                labelText: 'ID',
              ),
            ),

            // Field para Nombre
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: TextField(
                cursorColor: Color.fromARGB(255, 139, 72, 151),
                decoration: InputDecoration(
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
              ),
            ),

            // Field para Piezas
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: TextField(
                cursorColor: Color.fromARGB(255, 139, 72, 151),
                obscureText: true,
                decoration: InputDecoration(
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 139, 72, 151)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 139, 72, 151),
                          width: 2.0)),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 139, 72, 151))),
                  labelText: 'Piezas',
                ),
              ),
            ),

            // Field para IDA
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: TextField(
                cursorColor: Color.fromARGB(255, 139, 72, 151),
                decoration: InputDecoration(
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 139, 72, 151)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 139, 72, 151),
                          width: 2.0)),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 139, 72, 151))),
                  labelText: 'ID del artículo',
                ),
              ),
            ),

            // Boton
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 139, 72, 151),
                ),
                onPressed: () {},
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
